# intuitably.com

Jekyll site for Carl's personal blog (posts) and portfolio (projects, edugames).

## Develop

```bash
bundle install
./run.sh          # bundle exec jekyll serve --livereload
```

Site serves at `http://localhost:4000`.

## New post

```bash
./new_post.sh My Post Title
```

Creates `_posts/YYYY-MM-DD-my_post_title.markdown` from `_post_template.markdown`, dated and titled. Edit the file, fill in `categories`, write content below the front matter.

## Structure

- `_posts/`: blog posts
- `_layouts/`, `_includes/`: theme overrides on top of `minima`
- `index.markdown`, `projects.markdown`, `edugames.markdown`, `about.markdown`, `privacy.markdown`: top-level pages, listed in `_config.yml`'s `header_pages`
- `isuzu/`: standalone static page, not part of the Jekyll post/page flow

## Build

```bash
bundle exec jekyll build
```

Outputs to `_site/`.
