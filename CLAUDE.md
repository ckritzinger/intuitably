# intuitably.com

Jekyll blog + portfolio site. See README.md for dev commands.

## Content

- Blog posts live in `_posts/`, named `YYYY-MM-DD-title.markdown`. Use `./new_post.sh <title>` to create one from `_post_template.markdown` rather than hand-rolling front matter.
- `projects.markdown` is a running, reverse-chronological list of things Carl built. Each entry: `### Name`, a short paragraph, then a link line. Newest entries go at the top, just under the intro paragraph.
- `edugames.markdown` is a curated sub-page for the kids' games specifically (X Blitz, Wordie, Word Spotter, ...); each entry there gets a fuller "why I built this" rationale, not just a project blurb. Games still get a one-paragraph entry on `projects.markdown` too, linking back to `/edugames/`.
- New top-level pages need adding to `header_pages` in `_config.yml` to show up in nav.

## Voice

Carl's own writing voice: first person, understated, a little dry. Don't pad descriptions with marketing language ("revolutionary", "seamless", "powerful"); describe what the thing does and why it exists in plain terms. No em dashes.

## Verifying changes

`bundle exec jekyll build` renders to `_site/`; use it to confirm a page compiles and check the rendered HTML before calling a content change done. The theme (`minima`) throws Sass deprecation warnings on every build; those are pre-existing and not something to fix here.
