---
layout: post
title:  "AI Brain for human with smol brain"
date:   2026-05-06 09:44:58 +0200
categories:
---

__Big brain wants to create perfect setup straight away. Smol brain knows: start simple, improve later.__

I heard about this second brain thing and it sounded cool. So I read many posts about how to achieve the perfect second brain setup by copying a bunch of files, putting them in the perfect location, creating the perfect folder structure and generally setting things up in exactly the way Karpathy or some other Big Brain Genius Person does. It was tantalising, but paralysing: which one to choose, is this right for me, what if I do it wrong?

My epiphany: that's entirely the wrong way to approach it. A decent [OODA loop](https://www.amazon.com/Certain-Win-Strategy-Applied-Business/dp/1413453767) will beat any predefined strategy within a short space of time. So just start. Then observe how you're working, figure out what bothers you, decide how to do it better and tell the AI to start doing that. Then repeat.

The whole point of this AI revolution is infinite personalisation. By blindly copying someone else's process you are robbing yourself of that magic.

**The trick to having a useful AI setup is to embrace imperfection**

Don't aim to make it perfect, just get something in place, and have a plan for making it incrementally better.

So if you want to set up an AI second brain, here is the smol brain approach that worked for me:

1. set up Claude Code (or use Cowork or whatever floats your boat)
2. install [Obsidian](https://obsidian.md/) and create a vault (or whatever note taker you like really - as long as it uses  some sort of structured files that your AI can read)
3. Run Claude Code inside your obsidian vault

**Congratulations, you now have an AI second brain. Everything from here on is just incremental improvement.**

Some starting points:

4. Tell claude you're setting up this vault to function as a second brain and tell it to ask you what it needs to ask. It will make up some fairly sensible baseline folder structures. If it doesn't, no worries! Fix them later.
5. Now, whenever you want to do something - tell claude. drop files in, paste in email/chat logs, whatever - AI tends to be absurdly good at ingesting and structuring data. Your folders start getting populated.

**The CRITICAL STEP**

Think about your workflows and create skills to automate those workflows. Resist the urge to go big brain on this - just tell claude "create me a skill to do this thing, this is how i normally do it".  

Some things that worked for me: 

-  "create me a skill to prep for meetings, this should generate a meeting prep file in a logical place. after the meeting I want to dump in my transcripts, you should ingest them into my notes and add my actions to my todo list"
- "create a skill to plan my day based on my goals and my todo list"
- "create a skill to take my daily notes from today and ingest them into my long-term structure"

Don't front-load a bunch of cruft: These may or may not be things that you need. Just add skills when things get irritating. You'll very soon intuit that the friction of adding/updating skills is really really low - when you internalise that and start leveraging it, you win.

*Big brain wants to create perfect setup upfront. Smol brain knows: just start and improve later.*

Two standout useful additions:

- Git: Use git to back up your notes incrementally. Obsidian has a very nice git plugin. Takes 1 minute to set up. One day I might have to care about multi-device sync - that day is not today
- Inbox: I have a dedicated inbox folder that I dump stuff into (meeting transcripts, emails, random thoughts in md files), and a shortcut (/ingest) that just takes everything in the inbox and sorts/categorises it, then moves it to an archive. Inbox linked as a shortcut in finder to make dumping stuff there easier, and a terminal alias to move something to the inbox.