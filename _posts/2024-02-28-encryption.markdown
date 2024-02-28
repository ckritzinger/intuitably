---
layout: post
title:  "Apple, export regulations and toil"
date:   2024-02-28 13:10:12 +0200
categories: epiphanies
---

In my early forays into app store submissions, I found myself clicking through the same "Provide Export Comliance" questions every time I uploaded a new build.

According to Apple:

 > When you submit your app to TestFlight or the App Store, you upload your app to a server in the United States. If you distribute your app outside the U.S. or Canada, your app is subject to U.S. export laws, regardless of where your legal entity is based. If your app uses, accesses, contains, implements, or incorporates encryption, this is considered an export of encryption software, which means your app is subject to U.S. export compliance requirements, as well as the import compliance requirements of the countries where you distribute your app.

Are you wasting your life complying with [cold-war era export regulations](https://en.wikipedia.org/wiki/Export_of_cryptography_from_the_United_States)?

There's a two-line fix. Add the following to your `Info.plist`:

```xml
	<key>ITSAppUsesNonExemptEncryption</key>
	<false/>
```