---
layout: post
title:  "Xcode devs: try this one wierd trick to reclaim osx diskspace"
date:   2024-04-10 07:27:09 +0200
categories: notes_to_future_self
---

Started running low on disk space recently. Did some `du -sh *` around my volumes and came across this delight:

```
~ du -sh ~/Library/Developer/Xcode/iOS\ DeviceSupport/*
5.0G	15.7.5 (19H332)
5.0G	15.7.6 (19H349)
  0B	15.7.7 (19H349)
5.0G	15.7.7 (19H357)
  0B	15.7.8 (19H357)
5.0G	15.7.8 (19H364)
  0B	15.7.9 (19H364)
648K	15.7.9 (19H365)
  0B	15.8 (19H365)
5.0G	15.8 (19H370)
6.3G	16.6.1 (20G81) arm64e
3.6G	iPhone14,6 17.3.1 (21D61)
```

Turns out, that every time you run an Xcode project on a device, Xcode helpfully downloads debug symbols from the device. So every iOS upgrade on my dev device was creating a 5GB "cache" that just hangs around forever.

[You can safely delete everything here](https://stackoverflow.com/a/40327522) as well as a few others. I freed up more than 40GB in a few seconds.

If you're still using one of those caches it's going to cost you a few seconds next time to debug on that device, so you can be a little bit selective.