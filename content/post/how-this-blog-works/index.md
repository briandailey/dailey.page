---
title: How This Blog Works
description: Automating a Hugo blog to publish to Cloudflare, and more.
slug: how-this-blog-works
date: 2025-02-14 00:00:00+0000
image: cover.jpg
categories:
    - Random
tags:
    - Engineering
---

This serves as documentation for my future self as well as an explanation that
might be useful for others. If you want to set up a Hugo-based blog that creates
a nice static site and publishes without too much work, then this is one way to
do it.

There are a few components:

- The Blogging Framework (how posts get created)
- The UI
- Automatic Publishing
- Automatic Deployment

## The Blogging Framework

I'm using [Hugo](https://gohugo.io/). It allows me to write blog posts as
[Markdown](https://www.markdownguide.org/basic-syntax/) (in my [favorite
text editor](https://www.vim.org/)). Using that Markdown, it builds all of the
HTML in my chosen theme, along with all of the menu navigation, tagging, RSS
feeds, etc. It's quite nice!

I also keep everything in version control via [git](https://git-scm.com/). That
allows me to track changes over time. All of the files used to generate the site
are [on GitHub](https://github.com/briandailey/dailey.page/) which serves as
both a backup and a way to automate publishing and deployment (more about that below).

## The UI

I'm using [Hugo Theme Stack](https://github.com/CaiJimmy/hugo-theme-stack) by
Jimmy Cai. It looks nice, and I'm generally terrible at front-end design.

## Automated Publishing

When you write content for Hugo, there's a [build
step](https://gohugo.io/commands/hugo_build/) that you run to generate the site.
The simplest way to do this is to just run it locally and copy the resulting
files somewhere (like Cloudfront or Amazon S3). If you do this, you need to
remember the build command, any specific parameters for your build, etc. I got
into programming because I hate tedium, and that, my friend, is _tedious_.

I've been spoiled by modern build systems where I need only push my changes to
the main branch on GitHub and the robots do the rest. So let's do that!

I used an [existing action in the GitHub
Marketplace](https://github.com/marketplace/actions/hugo-gh-pages-action) and
forked it to [my own repo](https://github.com/briandailey/actions-hugo/) to make
a [slight
modification](https://github.com/briandailey/actions-hugo/commit/3246cff7d82dfba2cf8f8518948e794a72aba14f)
in order to override which branch we're pushing the published works to. In this
case, I didn't want to use `gh-pages` because I want to publish the static site
to Cloudflare using the `static` branch.

## Automated Deployment

Cloudflare has a [very generous free
tier](https://mattsayar.com/why-does-cloudflare-pages-have-such-a-generous-free-tier/)
that makes it really easy to publish static content from GitHub to a domain.
Once you have an account, you'll find it under "Compute (Workers)" and then
"Workers & Pages." From there, you can create a Page and hook it up to a
specific GitHub repository and branch. In this case, I hooked it up to the
`static` branch. Once you assign all of the permissions and get the custom
domain set up, Cloudflare takes care of the rest.

## Wrapping It All

So that's it! Now when I want to publish a new post, I edit the files locally,
commit the changes and push them to the main branch on GitHub. From there,
GitHub builds the files and publishes to another branch, where Cloudflare picks
it up to host on their free tier.


## Bonus: Automated RSS Ingestion for "Weekly Posts"

Inspired by the "[assorted links](https://marginalrevolution.com/marginalrevolution/2025/02/friday-assorted-links-508.html)"
on Marginal Revolution and the "Highlights" on [Simon Willison's
blog](https://simonwillison.net/), I wanted to aggregate interesting things I
found during the week into a single post. To do this, I wrote a really [terrible
little script](https://github.com/briandailey/weeklylink) to accumulate links
that I post to [Pinboard](https://pinboard.in/) with the "interesting" tag. You
can see what the first post created in this manner
[here](/p/weekly-assorted-things-2025-02-14/).
