---
layout: post
title:  "Constraints in an age of abundance"
date:   2026-09-22 16:06:57 +0200
categories:
---

"I can't keep up any more. I'm getting overwhelmed."

I've had a number of variations on this conversation, but one stuck in my mind. My friend is a product manager. Her company has an SDLC that is self-described as "Anarchy-Driven Development": it's an open-source company and the processes model open-source dev practices. Engineers are encouraged to work largely autonomously on their missions and contribute what they think makes sense. It took me a while to wrap my head around this, since the last place I worked had an extremely Taylorist view of software engineering - anything is possible if you have enough Jira tickets for it.

These folks feel the side effects of (software) abundance. Developers are building away merrily - anyone can churn out a 1000-line PR in a few hours. But each engineer is building locally optimal solutions to the problems they encounter and those point solutions don't always fit into the coherent global picture that the product manager must operate in. She needs to bridge that gap, and so she ends up being a canary in the coalmine of abundance.

## Build all the things

Historically, we had two sources of back-pressure on development. The one was that (as we used to say) "coding is hard"[^1]. The other constraint was the one imposed by (for lack of a better term) product management. This latter one included taste, strategy, ROI and every other signal that we used to decide whether to do something now, do it later or not do it at all. Generally we didn't even have to explicitly decide to not do something - the realities of software development meant that anything other than immediate burning needs would quietly trickle down the stack rankings and end up in eternal limbo at the bottom of "the backlog" - just one more half-baked idea that didn't justify its own existence.

In our brave new world, we have lost the harder of those two constraints. Our mindset and processes have yet to catch up to what that means in practice. When a nifty feature pops into your mind while you are sipping your morning coffee, it's easier to create a pull request than it is to write down a coherent business case for it. This is not a good thing. Just because you can build something now doesn't mean you should. 

## Goldratt says

The Theory of Constraints states that the throughput of the system is limited by the slowest process in the system. Consequently, making any other process go faster doesn't improve your throughput. In fact, lean production says that if you make other processes go faster, you end up creating inventory. Your mental model of that inventory should be of half-finished products piling up on the factory floor, getting in the way and tripping people up while they are working. 

Hilariously, when I first learned about these principles, that slowest process was building things, and we were doing everything we could to avoid overwhelming the developers. Now I'm learning to re-apply that principle to a world where building things is the cause of the problem, rather than the constraint.  It's easy to forget that we're not in the business of writing code, we're in the business of business. And that means that the hard problem is still [understanding our customers](https://x.com/karpathy/status/2049907410303865030?lang=en), a process that is highly constrained by the limitations of the human brain. 

## ... stop digging

There are many ways to address this problem. They can be split into two broad categories: Either you need to slow down, or you need to speed up. Which one you choose depends on what your business looks like.

If understanding your customers is something that can be meaningfully distributed throughout your organisation, then you need to get rid of the "traditional" product manager role. Let engineers fully specify and ship product end to end.

But if understanding your customers deeply isn't something that you can delegate to everyone in the organisation, you'll need people who have a bird's-eye view of the whole product and strategy. For them to be effective, you need to protect their focus and bandwidth ruthlessly, even if it comes at the cost of telling your engineers on a regular basis to go home and wash their cars.

## Some things are still scarce

Understanding your customers deeply AND being able to build things (even by wielding AI) is the intersection of two unusual skills. Finding someone who can do both is rare. Building a meaningfully-sized org entirely out of people who have both of these skills is seldom realistic. And even if you do find these unicorns, there's still a context distribution problem for the whole business that must be solved. So, regardless of how badly they want to empower everybody to "deliver massive customer value", most teams will inevitably end up with something that looks like a traditional PM function.

Historically, product people would get enough time to think deeply about the "should": between talking to customers and talking to developers they had some slack to figure out what to build and why. And a lot of that slack was created mainly because the process of writing the code was slow. Now, the time to write the code has gone to zero, and the first thing to be sacrificed was having enough time to think things through.

For my product manager friend, the distributed responsibility in their setup is an implicit bet on their engineers being the type of rare unicorns who can both understand customers deeply and build the solution. Her overload is telling us that the approach isn't sustainable.

Her responsibility is to not let the overwhelm make her discard the very thing that is most valuable right now: **careful curation of what to put in front of customers**. If slowing down the engineering team's throughput is the only way to achieve that, then that is a reasonable price to pay.

[^1]: The only thing that is hard now is to even remember what it felt like when the act of creating working source code was difficult.