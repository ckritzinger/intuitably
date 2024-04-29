---
layout: post
title:  "on cobras and database schemas"
date:   2024-04-29 21:05:28 +0200
categories:
---

Previously, I was at a company that had a large and somewhat problematic database.  Questionable design decisions and blatant hacks had piled up upon one another to the point where any schema change felt like the penultimate move of a Jenga game.

Despite this, many of the developers would haphazardly slap in a new column, table or index without a second thought. Other devs would willy-nilly deploy code with non-trivial schema migrations, bringing the whole tower crashing down. Hilarity ensued.

Mindful of this, and with a few awkward incidents still raw in his recent memory, our VP of engineering decreed that henceforth ALL schema changes shall be reviewed by an architecture committee.

Unfortunately, the committee took a lot of preparation, only met every other week and often would give you feedback and place additional requests on your proposed changes. Sometimes , they would even have valid reasons for the requests.

Developers are under the whip to make their burn-downs pretty and release features to meet their quarterly OKRs (both of these are rants for another time), and so they find ways to innovate around the blockage: instead of making schema changes, they re-purpose old database fields, stuff JSON into string columns, shove relational data into redis and S3 and do other unmentionable things.

Consequently the schema not only continued to get worse, but in fact got worse a lot more rapidly. More hilarity ensued, culminating in a memorable month where few of the senior engineers got any sleep, the system spent a lot of time choked under load and the cloud services bill was nothing short of spectacular.

Although the superficial form of this tale may be modern, the underlying problem is a classic.  For instance: During the British rule in India, some wise government official decided the cobras were bad, and offered a reward for dead cobras.  Naturally, local  entrepreneurs began breeding cobras for the purpose of killing them and selling the corpses to the Raj.  Good business! Sadly, the government found out about this and abolished the programme, boo! At which point, the entrepreneurs did what any sensible person would do, if they suddenly found themselves with a great oversupply of cobras - they simply set them free. Cobras everywhere!

[There are other, equally amusing examples of this same pattern, well worth the read.](https://en.wikipedia.org/wiki/Perverse_incentive)

Humans are wily, ingenious creatures!

Management is hard!

What can we do?

Well...

Back in my undergraduate years, I learned about the three body problem. I'm talking about the physical model, not the book, although the book is brilliant and should definitely be on your reading list.

Now what makes the three body problem interesting is that (as with system in a chaotic realm) a tiny perturbation will cause the behaviour of the system to [diverge exponentially](https://en.wikipedia.org/wiki/Lyapunov_exponent) and unpredictably from it's current path.  Weather has similar properties, which is apparently why we study butterflies so carefully.

There is a large body of evidence to suggest that groups of humans attempting to collaborate exhibit the same phenomenon: a seemingly tiny change in the boundary conditions will result in large and unpredictable changes in the system behaviour.  And so the principles that I learned from sleepless nights of trying to debug simulations of chaotic systems seem useful to apply:

- Make changes one at a time, so that you can observe their effects in isolation.
- Monitor the effect of every change that you introduce carefully and at a high sampling rate.
- Ensure that you are measuring the right thing.  In the case of cobras, the number of cobras seen in the wild may be a better yardstick than the number of dead cobras in the garbage. In the case of the sick database, the number of architecture reports is not a good indicator of progress. APM statistics and database CPU usage would be more useful.