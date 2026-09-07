---
title: Claude Is A Unix Pipe
description: LLMs are becoming glue to get things done; this comes with some trade-offs.
slug: claude-is-a-unix-pipe
date: 2026-09-07 12:00:00+0000
image: cover.jpg
categories:
    - Business
tags:
    - Business
    - Engineering
---

Recently we [announced an MCP server for DocDB](https://docdb.io/blog/docdb-connectors-for-claude-and-chatgpt/). While observing our user base adopt the tool it occurred to me that it closely matches the paradigm of the Unix pipe. It is, fundamentally, a new category of “glue” that I expect to be widely adopted in the next few years.

The Unix pipe (`|`) is a magical character that allows you to compose powerful one-off pipelines by combining several programs together. It illustrates an philosophy of widely referred to as the “Unix philosophy.” This philosophy can be boiled down to the idea that “the power of a system comes more from the relationships among programs than from the programs themselves.”

This philosophy has four tenets, but the first two are most relevant to what I see LLM tooling doing right now.

> 1. Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features".
> 2. Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input.

These two principles are very much internalized by the tools available in the command line. It’s something that I have very much internalized as I’ve spent much of my career working from a command line interface (CLI). [^1]

Claude[^2] kicks this idea up a notch. Now, we have a general purpose tool that starts from a basis of fuzzy randomness and allows for users to not only evaluate text but create their own deterministic runtimes and scheduled routines, redirecting output from one utility to multiple other utilities, combining them in ways that creates additional value. Previously, one had to write the programs and stand up the infrastructure to do run it regularly. Now you can accomplish the same thing in a modern harness.

Now, there are quite a few caveats here. First, LLMs are by their very nature stochastic. The same input today might result in different output tomorrow.  This can be challenging for some data pipelines that require predictable behavior. Technologists will need to become familiar with understanding when a job to be done cannot be accomplished probabilistically and must be built deterministically.

Second, Claude routines are typically built and managed by a single user. This is a problem if the builder/maintainer leaves the company and the routine has become business critical. This creates a “ghost infrastructure” of business critical pipelines that will be mostly invisible to traditional IT teams. This will be brittle and cause much consternation over the next decade.[^3]

Even with the caveats, the usefulness of this paradigm guarantees that it will see wide adoption soon. Ideally, we will see additional infrastructure built to address the potential problems while still reaping the advantages.

[^1]: I spent most of my career on Linux and MacOS command lines, but my first exposure to computing was MS-DOS 5. I still recall being quite annoyed when a new PC booted into Windows 95. _Where is my command line?_

[^2]: I’m saying "Claude" here because it seems to have the widest adoption among companies I work with, but it is equally applicable to any LLM harness. "LLM Harnesses are a Unix Pipe" just didn't have the same ring to it.

[^3]: This isn't even getting into the massive security implications, which have been discussed [elsewhere](https://www.governance.ai/research-paper/estimating-global-yearly-cybercrime-damage-costs).

> _Header Image by [Heino Esiner on Unsplash](https://unsplash.com/photos/boats-and-kayaks-on-sandy-beach-oOmRb7EPHro)_
