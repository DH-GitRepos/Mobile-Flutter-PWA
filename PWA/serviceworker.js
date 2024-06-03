// Change the number on the end of the site to refresh the cache
const CACHE_NAME = 'baristars-v6';
const URL = "https://mad5-2-dh.web.app/";
const CACHE_URLS = [
'404.html',
'browserconfig.xml',
'favicon.ico',
'home.html',
'index.html',
'location.html',
'manifest.json',
'offline.html',
'order.html',
'register.html',
'rewards.html',
'settings.html',
'css/md-components-large.css',
'css/md-components-small.css',
'css/md-root.css',
'fonts/Roboto-Medium.woff',
'fonts/Roboto-Regular.woff',
'images/gmap-screenshot.jpg',
'images/gmap-screenshot.webp',
'images/icons/android-chrome-144x144.png',
'images/icons/android-chrome-192x192.png',
'images/icons/android-chrome-256x256.png',
'images/icons/android-chrome-36x36.png',
'images/icons/android-chrome-384x384.png',
'images/icons/android-chrome-48x48.png',
'images/icons/android-chrome-512x512.png',
'images/icons/android-chrome-72x72.png',
'images/icons/android-chrome-96x96.png',
'images/icons/apple-touch-icon.png',
'images/icons/apple-touch-icon-114x114.png',
'images/icons/apple-touch-icon-114x114-precomposed.png',
'images/icons/apple-touch-icon-120x120.png',
'images/icons/apple-touch-icon-120x120-precomposed.png',
'images/icons/apple-touch-icon-144x144.png',
'images/icons/apple-touch-icon-144x144-precomposed.png',
'images/icons/apple-touch-icon-152x152.png',
'images/icons/apple-touch-icon-152x152-precomposed.png',
'images/icons/apple-touch-icon-180x180.png',
'images/icons/apple-touch-icon-180x180-precomposed.png',
'images/icons/apple-touch-icon-57x57.png',
'images/icons/apple-touch-icon-57x57-precomposed.png',
'images/icons/apple-touch-icon-60x60.png',
'images/icons/apple-touch-icon-60x60-precomposed.png',
'images/icons/apple-touch-icon-72x72.png',
'images/icons/apple-touch-icon-72x72-precomposed.png',
'images/icons/apple-touch-icon-76x76.png',
'images/icons/apple-touch-icon-76x76-precomposed.png',
'images/icons/apple-touch-icon-precomposed.png',
'images/icons/favicon-16x16.png',
'images/icons/favicon-194x194.png',
'images/icons/favicon-32x32.png',
'images/icons/maskable_icon_x192.png',
'images/icons/mstile-144x144.png',
'images/icons/mstile-150x150.png',
'images/icons/mstile-310x150.png',
'images/icons/mstile-310x310.png',
'images/icons/mstile-70x70.png',
'images/icons/safari-pinned-tab.svg',
'images/logo/Baristars-Logo-1hdpi.png',
'images/logo/Baristars-Logo-1ldpi.png',
'images/logo/Baristars-Logo-1mdpi.png',
'images/logo/Baristars-Logo-1xhdpi.png',
'images/logo/Baristars-Logo-1xxhdpi.png',
'images/logo/Baristars-Logo-1xxxhdpi.png',
'images/logo/Baristars-Logo-White-1hdpi.png',
'images/logo/Baristars-Logo-White-1ldpi.png',
'images/logo/Baristars-Logo-White-1mdpi.png',
'images/logo/Baristars-Logo-White-1xhdpi.png',
'images/logo/Baristars-Logo-White-1xxhdpi.png',
'images/logo/Baristars-Logo-White-1xxxhdpi.png',
'images/stock/beans--pexels-photo-1695052.jpg',
'images/stock/beans--pexels-photo-1695052.webp',
'images/stock/coffee-takeaway--pexels-photo-885021.jpg',
'images/stock/coffee-takeaway--pexels-photo-885021.webp',
'images/stock/friends-pexels-marcus-aurelius-9789436.jpg',
'images/stock/friends-pexels-marcus-aurelius-9789436.webp',
'images/stock/machine-pour-pexels-photo-324028.jpg',
'images/stock/machine-pour-pexels-photo-324028.webp',
'images/stock/refer-pexels-samson-katt-5226490.jpg',
'images/stock/refer-pexels-samson-katt-5226490.webp',
'js/main.js',
'js/order.js'
];


self.addEventListener("install", function (event) {
  console.log("Service worker installed", self);
  event.waitUntil(
    caches.open(CACHE_NAME).then(function (cache) {
        console.log("Cache opened", cache);
        return cache.addAll(CACHE_URLS);
      })
  );
});


self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheNames) {
      return Promise.all(
        cacheNames.map(function (cacheName) {
          if (cacheName.startsWith('baristars-') && CACHE_NAME !== cacheName) {
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});

// Cache, then fall back to network
const cacheThenNetwork = (event) => {
  event.respondWith(
      caches.match(event.request).then(function(response){

          // Check cache for request
          if(response) {
            // found, return response
            console.log(`Returning ${event.request.url} from cache.`);
            return response;
          } else {
            // not found, go to network and return fetch request
            console.log(`Sorry, ${event.request.url} not found in cache.`);
            return fetch(event.request).then(function(response) {
                if (response.status === 404) {
                    return caches.match('404.html');
                } else {
                    return response;
                }
            });
          }
        }).catch(function(error) {
          console.log('Error: ', error);
          return caches.match('offline.html');
      })
  );
};

// Action fetch requests
self.addEventListener("fetch", function(event){
  cacheThenNetwork(event);
});