# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users

Primary reader is Carl's professional network: recruiters, peers, and potential collaborators or investors evaluating his work and track record. Secondary: blog readers arriving via search or a shared link, interested in the post itself rather than the CV. A smaller sub-audience (parents of kids using the edugames) reads `/edugames/` specifically. The site is also Carl's own record of what he's built and thought.

## Product Purpose

Personal site combining a blog ("Rants and Epiphanies") with a portfolio of projects and a resume. Exists to give Carl a durable, self-controlled place to publish writing and demonstrate built work, rather than relying on a CV alone or third-party profiles.

## Positioning

Not a polished corporate portfolio — it reads as one person's actual notes and actual side projects (many shipped, several acquired), in his own dry, understated voice. The credibility comes from the track record (FireID, FireWorks, Popcorn Training/KnowBe4, MoneyBadger, an app Daily Maverick bought) and from working software linked directly (playable games, live tools), not from marketing copy.

## Operating Context

Static Jekyll site built with `bundle exec jekyll build` / served via `./run.sh`. Deployed presumably via GitHub Pages given the `remote_theme` workaround noted in `_config.yml` (GitHub Pages' legacy build pipeline needs `remote_theme` rather than `theme:` to use Type-on-Strap). New posts are created via `./new_post.sh <title>` from `_post_template.markdown`. Top-level pages must be added to `header_pages` in `_config.yml` to appear in nav. `isuzu/` is a standalone static page outside the normal Jekyll post/page flow.

## Capabilities and Constraints

- Blog (`_posts/`), portfolio (`projects.markdown`), a curated kids'-games sub-page (`edugames.markdown`), resume (`resume.markdown`), about, and privacy pages.
- `projects.markdown` is reverse-chronological; each entry is a short paragraph plus a link line. Games get a one-paragraph entry here too, linking to `/edugames/`, with the fuller "why I built this" rationale living on `edugames.markdown` instead.
- Built on `minima`-family theme (`remote_theme: sylhare/Type-on-Strap`), constrained by GitHub Pages' legacy Jekyll 3.10 allowlist — plugins/gems must be on that allowlist or fetched via `remote_theme`.
- Sass deprecation warnings from the theme's own SCSS are known and pre-existing; not something future work needs to fix.

## Brand Commitments

- Voice: first person, understated, dry. No marketing language ("revolutionary", "seamless", "powerful"). No em dashes. (Defined in CLAUDE.md; carried here as a confirmed product-level commitment.)
- Site title "Rants and Epiphanies." and footer contact line (`humans@intuitably.com`) are existing, kept identity elements.
- Current visual identity is `Type-on-Strap`/`minima`, but it is not a binding commitment — open to replacement. Carl's general taste runs minimalist/functional/near-brutalist, but that's a stated preference, not a locked direction; visual-world decisions belong to `new-work`/DESIGN.md, not here.

## Evidence on Hand

- Resume content (`resume.markdown`) is real, factual career history — not to be embellished or treated as placeholder copy.
- Project entries in `projects.markdown` are real shipped/in-progress projects with working links (playable games, GitHub repos, live tools). No fabricated testimonials, metrics, or claims should be added.

## Product Principles

1. Voice over polish: understated and factual beats persuasive or "marketing" framing, even where that costs some conventional landing-page punch.
2. Real links over claims: every project entry should point at something that actually works (a live app, a repo) rather than describing it abstractly.
3. Visual identity is open to change; nothing here locks the site to its current theme.
4. Keep the site's structure (blog / projects / edugames / resume / about) legible to a professional-network reader landing cold, without over-explaining.

## Accessibility & Inclusion

No product-specific accessibility requirement established beyond standard web practice.
