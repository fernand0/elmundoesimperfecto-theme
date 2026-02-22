# elmundoesimperfecto-theme

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/elmundoesimperfecto-theme.svg)](https://badge.fury.io/rb/elmundoesimperfecto-theme)

A Jekyll theme based on [Lanyon](https://github.com/poole/lanyon), designed for the elmundoesimperfecto network of sites.

![Theme screenshot](screenshot.png)

## Features

- 🎨 **6 color schemes** - Blue, green, red, orange, purple, and teal
- 📱 **Responsive design** - Works on all devices
- 🔗 **Social icons** - GitHub, Twitter, Mastodon, LinkedIn, Instagram, and more
- 📝 **Multiple layouts** - Default, page, and post layouts
- ⚡ **Fast and lightweight** - Minimal dependencies
- 🔧 **Customizable** - Override layouts, includes, and styles easily

## Installation

### Option 1: Install from RubyGems (recommended)

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "elmundoesimperfecto-theme"
```

And add this line to your `_config.yml`:

```yaml
theme: elmundoesimperfecto-theme
```

### Option 2: Use from GitHub

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "elmundoesimperfecto-theme", git: "https://github.com/fernand0/elmundoesimperfecto-theme.git"
```

### Option 3: Local development

Clone the repository and reference it locally:

```ruby
gem "elmundoesimperfecto-theme", path: "../elmundoesimperfecto-theme"
```

## Usage

### Basic Configuration

In your `_config.yml`:

```yaml
theme: elmundoesimperfecto-theme

title: My Site
tagline: My Tagline
description: My description
url: https://example.com

author:
  name: Your Name
  email: your@email.com
  avatar: https://example.com/avatar.jpg
  homepage: https://example.com

footer-links:
  github: yourusername
  twitter: yourusername
  mastodon: https://mastodon.social/@yourusername
  linkedin: yourusername
  instagram: yourusername
  email: your@email.com
```

### Color Schemes

Add `theme_color` to your `_config.yml`:

```yaml
theme_color: theme-base-0b1  # Blue (default)
# theme_color: theme-base-0b2  # Green
# theme_color: theme-base-0b3  # Red
# theme_color: theme-base-0b4  # Orange
# theme_color: theme-base-0b5  # Purple
# theme_color: theme-base-0b6  # Teal
```

### Customization

#### Override CSS

Create `_sass/_variables.scss` in your site:

```scss
$link-color: #ff0000;
```

#### Override Layouts

Create `_layouts/default.html` in your site to override the theme's default layout.

#### Override Includes

Create `_includes/sidebar.html` in your site to customize the sidebar.

## Layouts

The theme provides multiple layouts for different site types:

| Layout | Use Case | Example |
|--------|----------|---------|
| `default` | Basic pages | All sites |
| `blog` | Blog posts with sidebar | blog |
| `aggregator` | Card grid for social feeds | personalAggregator |
| `portfolio` | Project showcase | projects |
| `page` | Static pages | All sites |
| `post` | Blog posts with related posts | blog |

### Using Layouts

In your site's front matter:

```yaml
---
layout: aggregator
---
```

Or set a default in `_config.yml`:

```yaml
defaults:
  - scope: { path: "" }
    values: { layout: aggregator }
```

```
elmundoesimperfecto-theme/
├── _includes/          # Sidebar, head, social icons
├── _layouts/           # Default, page, post layouts
├── _sass/              # Sass partials
├── assets/
│   ├── css/            # Compiled CSS
│   ├── js/             # JavaScript
│   └── favicon.ico     # Site icon
├── LICENSE
├── README.md
└── elmundoesimperfecto-theme.gemspec
```

## Development

To run the theme locally:

```bash
bundle install
bundle exec jekyll serve
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fernand0/elmundoesimperfecto-theme

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Credits

Based on [Lanyon](https://github.com/poole/lanyon) by [Mark Otto](https://github.com/mdo)
