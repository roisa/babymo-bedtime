/* Baby Mo Bedtime — Service Worker v1.0 */
const CACHE = 'babymo-bedtime-v1';
const ASSETS = [
  './',
  './index.html',
  './manifest.json',
];

// Install: cache all assets
self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE).then(c => c.addAll(ASSETS)).then(() => self.skipWaiting())
  );
});

// Activate: clean old caches
self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys().then(keys =>
      Promise.all(keys.filter(k => k !== CACHE).map(k => caches.delete(k)))
    ).then(() => self.clients.claim())
  );
});

// Fetch: cache-first for app shell, network-first for fonts
self.addEventListener('fetch', e => {
  const url = new URL(e.request.url);

  // Google Fonts — try network, fall back to nothing (app still works)
  if (url.hostname === 'fonts.googleapis.com' || url.hostname === 'fonts.gstatic.com') {
    e.respondWith(
      fetch(e.request).catch(() => new Response('', { status: 404 }))
    );
    return;
  }

  // CDN scripts — cache them after first load
  if (url.hostname === 'cdnjs.cloudflare.com') {
    e.respondWith(
      caches.open(CACHE).then(cache =>
        cache.match(e.request).then(cached => {
          if (cached) return cached;
          return fetch(e.request).then(res => {
            cache.put(e.request, res.clone());
            return res;
          });
        })
      )
    );
    return;
  }

  // App shell — cache first
  e.respondWith(
    caches.match(e.request).then(cached => cached || fetch(e.request))
  );
});
