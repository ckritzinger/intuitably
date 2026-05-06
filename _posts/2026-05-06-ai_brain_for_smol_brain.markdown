---
layout: post
title:  "AI Brain for human with smol brain"
date:   2026-05-06 09:44:58 +0200
categories:
---

I've seen so many posts about how to achieve the perfect second brain setup by copying a bunch of files verbatim and setting things up in exactly the way Karpathy or some other Big Brain Genius Person does. It was tantalising, but paralysing.

My epiphany: that's the wrong way to approach it. As with almost everything else, a decent OODA loop will beat any predefined strategy within a short space of time. The cognitive science people even have a word for this: Metacognition.

And the whole point of this AI revolution is infinite personalisation. By blindly copying someone else's process you are robbing yourself of that magic.

**The trick to having a useful AI setup is to embrace imperfection**

Don't aim to make it perfect, just get something in place, and have a plan for making it incrementally better.

So if you want to set up an AI second brain, here is the smol brain approach that worked for me:

1. set up Claude code (or use Cowork or whatever floats your boat)
2. install [Obsidian](https://obsidian.md/) and create a vault (or whatever note taker you like really - as long as it uses  some sort of structured files that your AI can read)
3. `cd vault && claude`
4. Tell claude you're setting up this vault to function as a second brain and tell it to ask you what it needs to ask. It will make up some fairly sensible baseline folder structures. If it doesn't, who cares, you can fix it later.
5. Now, whenever you want to do something - tell claude. drop files in, paste in email/chat logs, whatever - the AI tends to be pretty good at ingesting and structuring data. Your folders start getting populated.
6. CRITICAL STEP: think about your workflows and create skills to automate those workflows. don't go big brain on this - just tell claude "create me a skill to do this thing, this is how i normally do it".  E.g. something like "create me a skill to prep for meetings, this should generate a meeting prep file in a logical place. after the meeting I want to dump in my transcripts, you should ingest them into my notes and add my actions to my todo list"
7. Repeat step 5-6

*Big brain wants to create perfect setup upfront. Smol brain knows: just start and improve later.*

Two standout useful additions:

- Git: Use git to back up your notes incrementally. Obsidian has a very nice git plugin. Takes 1 minute to set up. One day I might have to care about multi-device sync - that day is not today
- Inbox: I have a dedicated inbox folder that I dump stuff into (meeting transcripts, emails, random thoughts in md files), and a shortcut (/ingest) that just takes everything in the inbox and sorts/categorises it, then moves it to an archive. Inbox linked as a shortcut in finder to make dumping stuff there easier, and a terminal alias (`mv $1 ~/notes/inbox/`) It was quite trivial to create this skill with a prompt and it saves a lot of toil