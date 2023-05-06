'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "f904e198570250e86fb067d5840bf65b",
"assets/assets/images/da.png": "349962bc1e4c96c9e3ffcb0e9d7858b4",
"assets/assets/images/da_bu.png": "eaef4ee8007492a32fcd402e361b96a1",
"assets/assets/images/da_co.png": "44087673d381887df9e6d5bdd26ac17f",
"assets/assets/images/da_d.png": "a57ebf601f708d2a3f9e40b1845aa3b1",
"assets/assets/images/da_jc.png": "4f8cdd6503f7e3e2b6ee980f9d480503",
"assets/assets/images/da_jc_d.png": "f84e0decccbd29156d51c67a2e464c12",
"assets/assets/images/da_jc_g.png": "21cc8dbef86f8151290298e25378237b",
"assets/assets/images/da_no.png": "623cf77490acb20aae5e2e784c79d992",
"assets/assets/images/da_pr.png": "a1c19ada956eb7fadab5fab3b477f3dd",
"assets/assets/images/da_pr_d.png": "2346d0453981fae6c3b6b263fefd64ab",
"assets/assets/images/da_qu.png": "b6f69b26b56736d1aa2bad554bee1377",
"assets/assets/images/da_sq.png": "47045a63fefa2f5ba7834930388f69a3",
"assets/assets/images/da_unc.png": "12556db3a76be37ea4da2b38a56be811",
"assets/assets/images/da_unc2.png": "4d76e2c7429b04ef0192ac9839378628",
"assets/assets/images/da_vi.png": "1cc59d30eb0b860e985c7df53ca7fc3c",
"assets/assets/images/fe.png": "5078ba0842344e3c483596661f2963fa",
"assets/assets/images/fe_av.png": "4500bf13bc56a72b67124f9cb7140478",
"assets/assets/images/fe_com.png": "b019c3dd8651bad2974fe3678d4edca5",
"assets/assets/images/fe_com_d.png": "3d513d4f815657fa881d2a68d8d49ab7",
"assets/assets/images/fe_d.png": "fcca7ea950193fcbdf63c3a898f688d1",
"assets/assets/images/fe_li.png": "d43bbb0c545a19346e1e021283a00a61",
"assets/assets/images/fe_li_d.png": "655d0940b0d8e9c6ebac9bda1c1c1586",
"assets/assets/images/fe_no.png": "a68ba99651c5540c2cea3db02637d59c",
"assets/assets/images/fe_no_d.png": "8a56fee45cd81d47ea4580a221fe580f",
"assets/assets/images/fe_p.png": "383cde3d1db2c76c13d2b85becaf8555",
"assets/assets/images/fe_se.png": "0639e30ae4967846dbd4bd347fb7c357",
"assets/assets/images/fe_se_d.png": "418a692d4f83266d5950898a5daae4ae",
"assets/assets/images/img_arrowleft_gray_900_24x24.svg": "fbd157d80f764f94cd9ae9548c67eb81",
"assets/assets/images/img_arrowup_white_a700.svg": "bba24030221dc80a49268bfb028d8e01",
"assets/assets/images/img_audiowave.png": "5798c43e2d3a6d559a1f80dea6d3d2d6",
"assets/assets/images/img_communication.png": "6ac54e9ef336327323a2954ba814c95b",
"assets/assets/images/img_trash_gray_200.svg": "e4ba2505f46cd6e56fcae7b0a9ae46bf",
"assets/assets/images/img_user.svg": "48e788c280869db38a017e7004565f35",
"assets/assets/images/img_user_gray_200_48x48.svg": "861935d4b3abeca1d867e69290d2c07b",
"assets/assets/images/img_user_gray_900_24x24.svg": "9135534ba1146a40b13bc40456b99965",
"assets/assets/images/img_user_white_a700_48x48.svg": "04f06fcb5baf2b5e2701cd1fdba0fd85",
"assets/assets/images/logo%2520.png": "a92d628ee099aa9f629473890dd58622",
"assets/assets/images/nav_i1.png": "45417c4e351d76d82b801dadffc1452c",
"assets/assets/images/nav_i1_d.png": "56618215c3bf548e7792b594e4768109",
"assets/assets/images/nav_i2.png": "cadf143b63777c1c4515fb6ba5423e17",
"assets/assets/images/nav_i2_d.png": "d77878fee81a3b8cca85a1af391ccacb",
"assets/assets/images/nav_i3.png": "75e0f9dd11354ae176e872c5023c34e7",
"assets/assets/images/nav_i3_d.png": "24e01e192178be74a868fa2b69986b0b",
"assets/assets/images/nav_i4.png": "5f36b142f02a93637f0e32151fde5b94",
"assets/assets/images/nav_i4_d.png": "6a67a5003f5d4de48397076ba5504694",
"assets/assets/images/nav_i5.png": "0067942235a3ae99359e46e0ce850eac",
"assets/assets/images/nav_i5_d.png": "74379162c817c688a1a78fe21c7d4313",
"assets/assets/images/sch_ar.png": "218886366294b0176ebb36b7ad5ce63b",
"assets/assets/images/sch_ar_d.png": "8a638dd74b8b0c0cbbe32feb069e680c",
"assets/assets/images/sch_av.png": "74fae2d853e9d06445a55785022e4510",
"assets/assets/images/sch_coa.png": "002946a64947c3bef550bb0ca9110aa1",
"assets/assets/images/sch_coc.png": "3b8635a69c3be483c1d71fd97e441ee6",
"assets/assets/images/sch_cou.png": "063f921865c34e351fd62ca9e2f86450",
"assets/assets/images/sch_cp.png": "50da66797e7339f406e54233bd6cf86a",
"assets/assets/images/sch_me.png": "6318e9e803a41a429820b7d8d573da20",
"assets/assets/images/sch_pc.png": "6442fce335e814178b7d6001b41d5b0d",
"assets/assets/images/sch_pr.png": "dbf924a41b6a7ff073de0c76f9a4ea3a",
"assets/assets/images/sh_coc.png": "3b8635a69c3be483c1d71fd97e441ee6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "e1e783ec9cdd06aa37fbf2bfc17659a5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "a1dba633b307f5add2908462723cf5fc",
"/": "a1dba633b307f5add2908462723cf5fc",
"main.dart.js": "9b4d908ec5f51cf70bde6765d78a28ec",
"manifest.json": "37c94e445853f18112b0d0e0b4867c7f",
"version.json": "5f9fd77b7599d130e3cadbb341556fa5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
