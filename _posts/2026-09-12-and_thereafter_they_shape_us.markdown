---
layout: post
title:  "Thereafter, they shape us"
date:   2026-09-12 12:20:29 +0200
categories:
---

"What percentage of code did you actually write for this?"

The question rattled me. I'd spent a chunk of my weekend building a thing that had been in my head for a while - a local-first time tracker and billing platform. I was quite pleased with the outcome, had a couple of collaborators already and even a couple of users.

Still, the question (unintentionally) made me wonder whether I had any reason to be pleased. Especially when paired with [some strong words from Stroustrup](https://x.com/haider1/status/2056487493084799059?s=20) questioning the value of AI-written code.

The code was never the hard part. Within a few weeks you can teach an 11-year old to write working code.  By the second month, most interns can start building features on a mid-sized project. From there it's several (many?) years of hard work to achieve a degree of mastery. What happens in those years?

And here, I think Stroustrup is giving us a clue. After all, the guy built C++. And C++ is instructive because although it's a high-level language, you can't use it well if you don't understand the layers underneath the source code (assembler) as well as the layers above the source code (design).  And if someone wrote a program in C++, would it make sense to ask them how much of the byte code they had written?

AI, unlike a compiler, allows you to outsource your understanding. My choice of word here is important. Allows. Not requires. Allows.  So talking about "AI coding" as a category is really conflating two very different ways of using the tool.

The trope approach has rambling prompts, steers purely based on superficial considerations and outsources the fundamentals of design and architecture.  As a result, code bases grow exponentially, design rots from within and the system devolves to garbage. Stroustrup is right - the results are not pretty.

**Or you can learn to use the tool properly.**

When I was younger, I was fortunate to do a short apprenticeship with a master cabinet maker.  When a craftsman like that is using a lathe, he isn't deep in a "lathing session", he is thinking about the wood and the very specific result he wants to achieve in it.

In the world of software craftsmanship, the "wood" lives at the intersection of three domains:

1. Product thinking: What's the problem I'm solving and what does the minimal, elegant solution look like?
2. Ontology: What are the parts of this solution, how do they interact and what are the rules?
3. Architecture: What design produces the above in the most robust manner?

We have a very powerful new tool at our disposal, one that constantly sings a siren's song - "stop thinking, and just tell me what you want". We no longer have the external forcing function of needing to type syntactically and semantically valid code in order to progress.  If we want to maintain our craft we need to create new ways of working that force us to be intellectually rigorous.

**Shaping and being shaped**

Marshall McLuhan famously said that we shape our tools and **thereafter they shape us**. The reality is that neither shaping is as one-sided as the expression makes it sound. It's not just the tool, but also how you work with it that determines your final shape. 

To return to the project that started it all: Yes, I didn't write a single line of code. But what was perhaps not obvious was the amount of time I spent thinking about the design:

- what the exact workflows are that I need to support and what surface area is needed to enable them,
- how to build it local-first and keep it human-readable by using plain text files in a directory hierarchy,
- and how to do all this using only boring technology - CSV for data storage and git for persistence,
- how to structure the data to guarantee that we avoid "little" issues like accidentally double billing a client. Given that this tool is going to be working with real money you can't just fuck it up a little and lol about it afterwards.

The thinking was always the hard part. What level of abstraction the compiler operates at just determines how much leverage that thinking has. If I'd been using C++, I'd say I wrote 100% of the bytecode.