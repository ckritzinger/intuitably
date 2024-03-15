---
layout: post
title:  "Don't build it (yet)"
date:   2024-03-14 13:18:39 +0200
categories: ramblings
---

As someone who nominally earns the majority of their income from writing code and building software, I spend an alarming amount of time telling people not to build software and/or not ask me to build software for them. 

To my detriment, I encourage people to use google docs, Zapier, sticky notes, a telephone, interns or in fact just about anything that doesn't involve writing code of any form. Failing that, I typically encourage them to build [less](https://www.outseta.com/posts/growth-by-elimination), [worse](https://moxie.org/2012/11/27/the-worst.html) software and build it faster.

Some of this may be related to the idea of [doing things that don't scale](https://paulgraham.com/ds.html), and some of this is just me being a luddite.  And some of this is related to the idea that often the building of things is one of the more predictable part of creating a business.  But all of those factors combined still don't fully explain my reluctance to build things and get money for doing so. 

So why do I spend so much time telling people not to pay me money to build things for them?

The typical "person-with-idea" that asks me to build something for them, has a picture in their head of how using their idea to serve customers will translate into money.  They have a view on what the end state will look like where this autonomous "product" is making money for them like a sort of Rube Goldberg machine (no disrespect to them, any new business is going to have spit and baling wire holding it together).

![image](/assets/images/rube.gif)

In the mind of person-with-idea, there is generally an even spread of complexity and risk throughout the implementation of this machine: the difficulty of assembling each component is roughly equivalent to that of every other component, so the logical approach is to work from right to left, or in parallel and assemble the whole damn thing before you fire it up.

Christopher Hitchens said something along the lines of: "the job of a public intellectual is to say that I think you'll find its a bit more complicated than that". I'm not an intellectual, and certainly not a public one.  But the more general case of this statement seems to be that the role of any [expert](https://www.youtube.com/watch?v=BKorP55Aqvg) in any situation is to say that "I think you'll find it's a bit more complicated than that".

So we look closer, and with more nuance, and we find that the different parts of the machine have vastly different attributes: some are simple steel cogs while others are Penrose stairs made of unobtainium.  Randall Munroe once [pointed out](https://xkcd.com/1425/) how hard these two are to distinguish. [^1]

Being able to distinguish these differences up-front makes for a completely different approach to machine-building. "Well, if we can replace this vintage bird-cage with a simple weight, then it makes it so much cheaper to build, so let's try that first and see if it works".  

And so a few years of tinkering with different technologies starts to add value: you develop a set of heuristics and patterns that give you quick estimates on viability, feasibility and potential tradeoffs: where will things break, how quickly could we build something to replace a manual process, and what are the main areas of risk.  

Most often this results in the conclusion that "all this is going to be reasonably easy (if tedious and costly) to build, just start by testing the value proposition with a google form and then we can build it later".  

Sometimes it results in the conclusion that "this is not possible on current hardware, unless P=NP". 

Very, very infrequently, it results in the conclusion that "hmm, it would be pretty hard to build that, but if we did [it could be interesting](https://bitcoin.org/bitcoin.pdf)".

If it was uniformly true that "the tech is the easy part", then life would be much simpler.  Unfortunately, the tech is the easy part, unless it's the hard part or the impossible part. And it's important to [be able to tell the difference](https://www.reddit.com/r/Jokes/comments/zsmy4/knowing_the_difference/).

[^1]: It occurred to me that this cartoon suddenly aged dramatically in the past couple of years. Well, the specifics did, but the principle is still standing tall.