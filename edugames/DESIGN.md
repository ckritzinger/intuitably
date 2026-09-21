---
name: Games I Built For My Kids
description: An arcade coin-op marquee page presenting three home-built kids' learning games as cabinets in a small arcade.
colors:
  ground: "#0b0b0d"
  panel-top: "#1b1b1f"
  panel-bottom: "#131315"
  line: "#2c2c31"
  ink: "#f4efe4"
  ink-dim: "#b3afa6"
  ink-faint: "#918d84"
  amber-word-spotter: "#ffb020"
  green-wordie: "#35e07a"
  red-x-blitz: "#ff4d3d"
typography:
  display:
    fontFamily: "Bungee, system-ui, sans-serif"
    fontSize: "clamp(1.9rem, 5.6vw, 4rem)"
    fontWeight: 400
    lineHeight: 1.12
    letterSpacing: "0.01em"
  cabinet-title:
    fontFamily: "Bungee, system-ui, sans-serif"
    fontSize: "1.5rem"
    fontWeight: 400
    letterSpacing: "0.01em"
  body:
    fontFamily: "Work Sans, system-ui, sans-serif"
    fontSize: "0.98rem"
    fontWeight: 400
    lineHeight: 1.6
  sub:
    fontFamily: "Work Sans, system-ui, sans-serif"
    fontSize: "1.05rem"
    fontWeight: 400
  label:
    fontFamily: "Oswald, sans-serif"
    fontSize: "0.72rem"
    fontWeight: 600
    letterSpacing: "0.12em"
  label-value:
    fontFamily: "Oswald, sans-serif"
    fontSize: "0.82rem"
    fontWeight: 500
    letterSpacing: "0.01em"
rounded:
  sm: "3px"
  md: "4px"
  lg: "6px"
spacing:
  section-y: "3.5rem"
  cabinet-body: "2.1rem 1.6rem 1.6rem"
  cabinet-gap: "2rem"
  plate-pad: "0.85rem 1rem"
components:
  button-primary:
    backgroundColor: "{colors.amber-word-spotter}"
    textColor: "#0c0a05"
    typography: "{typography.label}"
    rounded: "{rounded.sm}"
    padding: "0.72rem 1.3rem"
  button-primary-hover:
    backgroundColor: "{colors.amber-word-spotter}"
    textColor: "#0c0a05"
  card:
    backgroundColor: "{colors.panel-top}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
---

# Design System: Games I Built For My Kids

## Overview

**Creative North Star: "The Coin-Op Arcade Marquee"**

Three home-built kids' games presented as three coin-op cabinets standing under one small arcade marquee, not as a "learning app" landing page. The page refuses the category default outright: no rounded soft-shadow cards, no mascot, no friendly gradient hero. In its place: a near-black venue, exposed hardware (rivets, wiring-seam pigtails between cabinet and marquee), and one neon accent color scoped to each cabinet rather than one brand accent for the whole page. The marquee header states the offer once, in plain English, then gets out of the way; the cabinets are the hero, with no scroll-teasing image between header and content.

This is a standalone, decoupled single HTML file — it does not inherit or reference the rest of intuitably.com's Type-on-Strap/minima system, and this DESIGN.md governs only this surface (`edugames/index.html`), not the wider site.

**Key Characteristics:**
- Near-black venue ground with three cabinets, each carrying exactly one neon accent (amber / green / red) — never a shared page-wide accent.
- Bungee for marquee-scale display type only (page title, cabinet names); Oswald for stenciled instrument-plate labels and the PLAY button; Work Sans for all body/story copy.
- Small, consistent radii (3–6px) and 1px hairline borders throughout — no large rounded-card language.
- Real per-cabinet gameplay screenshots (two frames each) auto-crossfade as a slideshow; a static frame under `prefers-reduced-motion`.
- One-shot marquee-title flicker on load plus a continuously twinkling bulb string, both disabled under `prefers-reduced-motion`.

## Colors

Deliberately narrow: a near-black venue neutral scale plus exactly three saturated neon accents, one per cabinet, never mixed across cabinets.

### Primary
- **Word Spotter Amber** (`#ffb020`): Word Spotter's cabinet accent — marquee glow border, cabinet title color/glow, PLAY button fill and hover glow, plus the shared marquee-header title glow and bulb-string twinkle color (the header borrows the first cabinet's accent, it is not a fourth site-wide color).

### Secondary
- **Wordie Green** (`#35e07a`): Wordie's cabinet accent, same role set (title glow, wiring-pigtail dots, plate divider, PLAY button, hover glow), scoped strictly to that cabinet.

### Tertiary
- **X Blitz Red** (`#ff4d3d`): X Blitz's cabinet accent, same role set, scoped strictly to that cabinet.

### Neutral
- **Venue Black** (`#0b0b0d`): page background (`--bg`), the marquee ground.
- **Cabinet Panel Top/Bottom** (`#1b1b1f` → `#131315`): the vertical gradient fill of each cabinet card.
- **Seam Line** (`#2c2c31`): all hairline borders/dividers — cabinet edges, marquee-header bottom border, wiring seams, plate borders.
- **Warm Ink** (`#f4efe4`): primary text color, off-white rather than pure white.
- **Ink Dim** (`#b3afa6`): secondary body copy (marquee subhead, cabinet story paragraph).
- **Ink Faint** (`#918d84`): tertiary/label text — unlit bulb color, plate label (`dt`) color, "view source" link, focus-outline color source.

### Named Rules
**The One Accent Per Cabinet Rule.** Each cabinet carries exactly one neon accent, applied consistently to that cabinet's title glow, wiring pigtail, plate divider, and PLAY button. Accents never mix across cabinets and no fourth "page" accent exists outside the three cabinet colors (the marquee header borrows Word Spotter's amber, it does not introduce a new hue).

## Typography

**Display Font:** Bungee (with system-ui, sans-serif fallback)
**Body Font:** Work Sans (with system-ui, sans-serif fallback)
**Label/Mono Font:** Oswald (distinct, for instrument-plate labels and the PLAY button)

**Character:** A bold urban-signage display face paired with a condensed stenciled label face and a plain humanist body face — the pairing reads as "hand-lettered marquee sign plus a machine-stamped spec plate," never as a soft consumer app.

### Hierarchy
- **Display** (400, `clamp(1.9rem, 5.6vw, 4rem)`, line-height 1.12, max-width 22ch): the page marquee title (`h1.marquee-title`) only — one-shot flicker-in animation, neon text-shadow glow. Sized down and widened from the original two-word title's 2.1rem/16ch ramp to carry a longer, benefit-led headline without overwhelming the first viewport.
- **Title** (400, 1.5rem): each cabinet's name (`h2`), colored and glowing in that cabinet's accent.
- **Body** (400, 0.98rem, line-height 1.6, max ~42ch): each cabinet's story paragraph, in Ink Dim.
- **Sub** (400, 1.05rem, max ~38ch): the marquee header's one-line framing sentence, in Ink Dim.
- **Label** (600, 0.72rem, letter-spacing 0.12em, Ink Faint): instrument-plate field names ("Subject", "How to play"). Built in Title Case, not visually small caps — a divergence from the direction contract's "small caps" language; the shipped tracking/weight/size treatment carries the spec-plate feel without an actual `text-transform: uppercase`/small-caps rule, and this file records the built rule, not the brief's.
- **Label Value** (500, 0.82rem, Ink): instrument-plate field values.
- **PLAY label** (600, 0.86rem, letter-spacing 0.08em, on-accent dark ink): the PLAY button's text.

### Named Rules
**The Display-Is-Marquee-Only Rule.** Bungee is reserved for the page title and the three cabinet names. It never appears in body copy, plate labels, or button text — those are Oswald or Work Sans.

## Layout

Single strict grid: a full-bleed dark marquee `header`, then a `main` capped at 1180px centered, containing one `.arcade` grid. Desktop: three cabinets in one row (`grid-template-columns: repeat(3, 1fr)`, 2rem gap). Below 880px: cabinets stack to a single column at full width with a slightly larger 2.5rem gap. No intermediate breakpoint — it's a two-state layout (row / stack), matching the brief's "no loose asymmetry."

Each cabinet is a self-contained vertical flex column: marquee-name band, then body (screenshot, story paragraph, instrument plate pinned to the bottom via `margin-top:auto`, then the actions row). Internal cabinet padding is 2.1rem/1.6rem/1.6rem; the instrument plate uses a fixed two-column field grid (`1fr 1fr`, 0.9rem gap) regardless of viewport.

## Elevation & Depth

Mostly flat: cabinets are 1px-bordered panels with a subtle top-to-bottom tonal gradient (`panel-top` → `panel-bottom`), not lifted with ambient shadow. Depth is conveyed structurally instead — inset shadows on the cabinet screen well (making it read as a recessed CRT) and glow-shadows on lit elements (marquee title, cabinet names, PLAY button) that behave like neon signage rather than card elevation.

### Shadow Vocabulary
- **Screen well** (`box-shadow: inset 0 0 0 1px var(--line), inset 0 1px 4px rgba(0,0,0,0.6)`): the recessed look of each cabinet's gameplay-screenshot window.
- **PLAY button rest** (`box-shadow: 0 3px 10px -3px rgba(0,0,0,0.55), 0 0 13px -5px color-mix(in srgb, var(--accent) 70%, transparent)`): a real offset+blur drop shadow layered with a soft accent glow. (Round-1 finish review replaced an earlier hard zero-blur offset shadow with this pairing — the hard-edge version is not the system.)
- **PLAY button hover/focus** (`box-shadow: 0 3px 10px -3px rgba(0,0,0,0.55), 0 0 24px -4px color-mix(in srgb, var(--accent) 90%, transparent)`): same offset shadow, intensified glow, plus a 1px upward translate.

### Named Rules
**The Soft Depth Rule.** Any shadow used for physical lift (not a neon glow) pairs an offset with real blur — never a hard-edge, zero-blur offset shadow. This world is arcade-neon, not neobrutalist; a flat cutout shadow was tried on the PLAY button and rejected in review for exactly that reason.

## Shapes

Small, consistent radii throughout: cabinets 6px, the screen well and instrument plate 3–4px, PLAY button 3px. No large rounded-card geometry. Rivets and wiring-pigtail dots are true circles (`border-radius:50%`), the one recurring circular motif against otherwise square-cornered hardware. Borders are uniformly 1px hairlines in Seam Line (`#2c2c31`); no heavier structural borders anywhere.

## Components

### Buttons
- **Shape:** 3px radius, small and rectangular, not a pill.
- **Primary (PLAY):** cabinet-accent fill, dark ink text (`#0c0a05`), Oswald 600 at 0.86rem with 0.08em tracking, `0.72rem 1.3rem` padding, offset+blur shadow plus accent glow (see Elevation).
- **Hover/Focus:** glow intensifies, button lifts 1px (`translateY(-1px)`); transition disabled under `prefers-reduced-motion`.
- **Ghost ("view source"):** Work Sans/monospace fallback, Ink Faint text, no border at rest, underline appears in Ink Dim on hover/focus. Sits beside the PLAY button, visually subordinate.

### Cards / Containers
- **Corner Style:** 6px radius.
- **Background:** vertical gradient, Panel Top (`#1b1b1f`) to Panel Bottom (`#131315`).
- **Shadow Strategy:** none at the card level — flat panel, bordered only (see Elevation & Depth for what does carry depth).
- **Border:** 1px, Seam Line.
- **Internal Padding:** `2.1rem 1.6rem 1.6rem` (body), instrument plate `0.85rem 1rem`.
- **Signature hardware:** four corner rivets (7px circles, radial-gradient fill) on every cabinet; a single wiring pigtail (1px line, accent-colored terminal dots) dropping from each cabinet's marquee band to signal a hand-wired connection.

### Instrument Plate (signature component)
Each cabinet ends its body with a spec-sheet-style `<dl>`: two fixed fields ("Subject", "How to play"), Oswald labels at 0.72rem/0.12em tracking over Oswald values at 0.82rem, bordered in Seam Line, on a near-black translucent fill (`rgba(0,0,0,0.22)`). Pinned to the bottom of the cabinet via `margin-top:auto` so all three plates align on one baseline regardless of story-paragraph length.

### Marquee Header (signature component)
Full-bleed dark band: a row of 9 small twinkling bulbs (unlit Ink Faint, lit amber with glow, staggered animation delay), a one-shot steps-flicker title reveal on load, then a static subhead. Both animations are disabled under `prefers-reduced-motion`, falling back to fully-lit/fully-visible static states.

### Gameplay Screenshot Slideshow (signature component)
Each cabinet's screen well holds two real gameplay screenshots (`frame-1`, `frame-2`) absolutely stacked; `frame-2` crossfades in and out on a 9s infinite loop. Under `prefers-reduced-motion`, the animation is removed and only `frame-1` shows.

## Do's and Don'ts

### Do:
- **Do** scope every neon accent to exactly one cabinet; never introduce a fourth page-wide accent hue.
- **Do** pair any lift-shadow with real blur (`box-shadow` offset + blur + optional glow layer); a hard zero-blur offset shadow was tried and rejected here.
- **Do** reserve Bungee for marquee-scale display type (page title, cabinet names) only.
- **Do** disable all decorative animation (bulb twinkle, title flicker, screenshot crossfade) under `prefers-reduced-motion`, falling back to a static, fully legible state.
- **Do** keep instrument-plate fields to short, spec-sheet-style label/value pairs (Oswald, tight tracking).

### Don't:
- **Don't** add outbound links to the rest of intuitably.com from this page — a footer link to the wider site was removed in finish review because it contradicted the user's explicit "don't link out" requirement for this surface.
- **Don't** use em dashes in this page's copy — PRODUCT.md's brand voice commitment is "no em dashes"; two slipped in during a copy pass and were corrected.
- **Don't** treat the neon glows, twinkling bulb string, or crossfading screenshots as generic "AI decoration" to prune — they're disclosed, scoped exceptions (`dark-glow`, `pulsing-dot`, `buried-raster` in `.impeccable/config.json`, this file only) because they are what an arcade marquee, its bulb signage, and a requested gameplay slideshow actually are. That disclosure is local to this file; it does not license glow/pulse/buried-raster devices on other surfaces.
