'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "8e0333f5a1ab40e35705fd0887f5e586",
"version.json": "7c0cd5fe7488ff4f69c4836b0af61724",
"index.html": "1d28825afcdeb7949bd66ad2d31435e9",
"/": "1d28825afcdeb7949bd66ad2d31435e9",
"main.dart.js": "1accb775cb414554ef8c71a6ba5eb67b",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "d92f016071a6cd0a2463c70feedf16cd",
"icons/favicon.ico": "0d5e662e5c4f360ed7a2c603bee4d136",
"icons/apple-touch-icon.png": "5485b6ace9e8b614847fdd248661fb35",
"icons/icon-192.png": "a56c0c65a3c134055376f27ba4f33c33",
"icons/icon-192-maskable.png": "60a694ee318cee372c2106ce675a42a1",
"icons/icon-512-maskable.png": "d92f016071a6cd0a2463c70feedf16cd",
"icons/README.txt": "d3df3991a31f034bfa98afdfa3c622e1",
"icons/icon-512.png": "5c04fca0a92d1bf5f1529207dffd8373",
"manifest.json": "01295c1b3f73adff267d6509041247b4",
"assets/images/card_insight.png": "620247db1efb3065efe899ea11001d05",
"assets/images/card-bg.png": "f3f0e58ab8f98715749911190f0f3e33",
"assets/images/landing_page%2520(3).png": "91f45d1beca8ba9d921ef93b1249d05f",
"assets/images/x-icon.png": "242685bd5342ab07ee85fc5d94a12f03",
"assets/images/landing_page%2520(5).png": "3c34183509aea744b5cfed40f018867f",
"assets/images/landing_page%2520(9).png": "9d9b05bf03d8f222f9c0bbe6c7424ca4",
"assets/images/live_update.png": "e1c2ec3f8ad922c1ae3f23bfbc9efd00",
"assets/images/wonder_card_logo_with_black.png": "6d9e49d4f130d5d3d444682d968085e6",
"assets/images/card_design.png": "6fd9d3c024a1b90ca593fb7f8c9e9419",
"assets/images/landing_page%2520(4).png": "513a1959f2c820e66d31c7233fd5e5c3",
"assets/images/behance.png": "7ef1b4ffa3f734d1c39da1f94ac40b62",
"assets/images/effortless_sharing.png": "c8816b6a3d3f3b9556c9853ad93b5c62",
"assets/images/landing_page%2520(11).png": "68a89797c0d1b8bef49406041f982508",
"assets/images/virtual_demo.png": "fc3bbb6efb2c169b698605b40c47f3c8",
"assets/images/digital_identity.png": "102982941923d455182ae335301e1b3c",
"assets/images/mobile_app.png": "3bde6a998955d2c8913c420411aba504",
"assets/images/landing_page%2520(10).png": "6ecd3523ba6cf482e16785f1f1af4eff",
"assets/images/landing_page%2520(6).png": "a2a7ea71a37a652685f508b56fe192d2",
"assets/images/blue-logo.png": "23992f5d3557f4adecdaec2109c0ed33",
"assets/images/wonder_card_logo.png": "23992f5d3557f4adecdaec2109c0ed33",
"assets/images/landing_page%2520(1).png": "af202732b76a3bfad535c903a2494142",
"assets/images/phone-hand-mockup.png": "5ac336a23fdf26c2cdda0f1e48faf774",
"assets/images/landing_page_vector.png": "fcacf3c1c58f3101e2a02e964bd1714a",
"assets/images/x.webp": "d97569937ea7e0b083406a9dccdccb4e",
"assets/AssetManifest.json": "9322161e9a99d91433d5c1c7fca7e1f1",
"assets/NOTICES": "60dd0414039004570d56c6aed309ddea",
"assets/FontManifest.json": "bfde4c69e68aa9e819f8e97bdf747a8c",
"assets/AssetManifest.bin.json": "60abcbf46c290c8ad6f20eb1e366f63f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "7ec1c3692bd8e08b1fdaf61c137290ed",
"assets/fonts/Barlow-Regular.ttf": "9373fb661b5c2954ab84d1b7f42774fe",
"assets/fonts/MaterialIcons-Regular.otf": "6ee22dbf58cf742e20554b86f11b5110",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
