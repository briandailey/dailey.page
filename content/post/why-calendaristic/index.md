---
title: Why Calendaristic?
description: In a distributed company there is very little visibility into how much time is spent in meetings.
slug: why-calendaristic
date: 2023-06-06 12:00:00+0000
image: cover.jpg
categories:
    - Business
tags:
    - Business
    - Engineering
---

From 2011-2019, the engineering team at Stratasan (where I served as CTO) worked
from home at most once a week. In March of 2020, that all changed and we went
100% distributed.

Like many small companies in the before-times, we worked out of an office with
a small number of conference rooms. We used shared calendars to book the
rooms. If a meeting went over time, participants had to wrap up and
exit so the new meeting could get started.

This served as a forcing function in a few ways:

- The availability of meeting rooms put an artificial ceiling the number of
  meetings we could have at any time.
- Meetings had to end on time so the room could be made available for the next
  group.
- Recurring meetings were trickier to set up because one needed to check for room
  availability.
- Meetings were also _visible_. You could see when folks were huddling (whether in
  a conference room or at a desk).

I'm neutral on whether the above is good or bad. But it did serve to make
meetings more scarce, and scarcity increases value. If you have fewer meetings,
it forces you to be more intentional with how the time is spent.

When we moved to remote, all of that disappeared.

- Meetings proliferated (anecdotally, but with some data to back it
  up). In particular, _recurring_ meetings seemed to proliferate.
- Meetings went over time more frequently. "Does anyone here have a hard stop?"
  became a common question.
- Meetings seemed to carry a higher cognitive load on participants.[^load]

We did a lot to try to mitigate some of what we were seeing. Several of us
configured "speedy meetings"[^speedy]. We performed periodic "recurring meeting
resets" where we cleared recurring meetings and only set up the ones we thought
were absolutely necessary. We encouraged detailed agendas. We set up a
"one-pager" that detailed _how we do meetings_ in order to try to make them more
efficient.

I think some of this worked. But I can't be sure, because the data either didn't
exist or was very tedious to gather. We could get some calendar statistics by doing spot checks.
I could look at my calendar as well as some of my team members. There is _some_
calendar analytics built into the Google Workspace dashboard, but it was too
high level to really get any useful information from.

What I really wanted was a nice dashboard to monitor how we were doing. In
particular, I wanted to trend it over time. I had many questions. Among them:

- Is our meeting burden (average per person) trending up or down?
    - How high is _too_ high?
    - Break it down by recurring versus one-offs.
- How many meetings have an agenda? How many have a _good_ agenda?
- Break down averages in a few ways:
    - By department.
    - By internal vs. external participants.
- Since "speedy meetings" are only configurable on the account level, who are
  the folks who are not taking advantage of that setting?

There are lots of other questions I want to answer, but these are the ones I
started with.

There are lots of great calendar tools out there. But all of them, in my
experience, are targeted at the _individual user_, not operators. I wanted a
tool that would look at my Google Workspace domain and run the analytics on
everyone in the company, not just me and/or my team.

Since I haven't been able to find such a tool, I'm building it in
[Calendaristic](https://calendaristic.com).

I am looking for a handful of companies that can test this with me as it's being
developed. If you're interested, please head over to the [sign up
page](https://calendaristic.com/signup/) to let me know you're interested! Even
if this doesn't sound like a product you'd want, if you have thoughts about
meetings in general and want to chat, hit me up! My email is `brian at this
domain`.

[^speedy]: 60 minute meetings become 50 minute meetings, 30 minute meetings
become 25 minute meetings. This is configurable in Google Calendar for users.
More information can be found
[here](https://blog.google/products/calendar/make-most-your-day-7-google-calendar-tips/).
[^load]: "Cognitive load" of video conferencing has been written about
  elsewhere, but the good news is that it was one of the easier things to
  alleviate. Tips on this can be found
  [here](https://news.stanford.edu/2021/02/23/four-causes-zoom-fatigue-solutions/).

> Photo by <a href="https://unsplash.com/@gainingvisuals?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Gaining Visuals</a> on <a href="https://unsplash.com/photos/wKu5yvAT0bg?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
