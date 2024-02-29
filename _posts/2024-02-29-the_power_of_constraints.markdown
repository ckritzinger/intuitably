---
layout: post
title:  "The power of constraints"
date:   2024-02-29 13:55:50 +0200
categories:
---
In [A Beautiful Constraint](https://www.amazon.com/Beautiful-Constraint-Transform-Limitations-Advantages/dp/B08DG8DK9Q), the authors make a compelling case that constraints can be a source of creativity and innovation. In my case, very tight constraints were the only thing that got me to finally publish a blog.

I've had many false starts on this. Mostly, I have an idea for something that I want to write, or a notion that I really should be blogging, or I take a look at the list of my notes and feel like I should really start turning some of these into long-form content.

And then I go down the rabbit hole of thinking about what the ideal blog setup would be. I start researching different frameworks and templates, different hosting providers, what would be a great code formatter.  Eventually the analysis paralysis bogs me down to the point where I give up, or need to go do real work.

I could just give up and use Medium, but ultimately [I want to own my content](https://startafuckingblog.com/), I believe in open platforms and communities and I think the world has lost a great deal by moving to a [small number of walled gardens and platforms](https://www.theverge.com/23513418/bring-back-personal-blogging).

This last time, I had a very hard deadline. I had promised the Powersync team that I would finish up the damn blog post this month, I had a ton of other work to do and I could simply not afford to bugger around.  So, I gave myself 2 hours to get something live. And resolved that if I didn't have a blog post up by then, I would just use Medium. Which would make me sad.

The process then went like this:

1. Identify the tool to use (Jekyll) by googling "best static site generator 2024" and going with the recommendation of a random Hacker News commenter that "[if you like ruby, use Jekyll](https://news.ycombinator.com/item?id=20797170)". Also, the name is familiar, and I have actually used it before back in the distant past.
2. ~~Find a template~~ Fuckit, just use the Jekyll default, spend 10 minutes figuring out how to edit the basic layour to get rid of cruft I don't want.
3. Host it on the easiest platform I can find. Achieved this by running `jekyll new` and trying to deploy the result.  Github pages failed, because it had issues with the newer Jekyll versions and didn't serve the assets correctly. Vercel failed in some obscure way, and I didn't have time to debug it.  Netlify worked first time.

After about 90 minutes, i had a blog. Yay me. I could spend the last half hour tweaking content and still make my self-imposed cutoff.

And wierdly, I'm now 3 posts deep a few days later o_O - let's see if it sticks.  But due to the complete absence of friction (write, `git commit && git push`, done), and the fact that [my blog kinda sucks](https://kadavy.net/blog/posts/permission-to-suck/), I don't feel too pained about putting up sub-standard content. This is incredibly liberating.

My main self-indulgence has been to spend 20 minutes crafting [a bash script that generates a new post](https://github.com/ckritzinger/intuitably/blob/master/new_post.sh) for me. Why Jekyll doesn't do this out of the box is truly a mystery.

Why did this work so well? Maybe because I'm lazy and have no grit.

The other plausible explanation is that the constraints themselves made it feasible. Their reframing of constraints into the form "I can do $GOAL if $SHORTCUT" is a powerful one. In my case "I can get a blog up if I don't care what it looks like and I just take the easiest possible approach" worked like a charm. Maybe one day I'll even pick a nicer template.