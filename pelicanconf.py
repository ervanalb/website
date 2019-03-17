#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

#AUTHOR = 'ervanalb'
SITENAME = "ervanalb/blog"
SITEURL = ''

PATH = 'content'

TIMEZONE = 'US/Eastern'

DEFAULT_LANG = 'en'

THEME = 'custom'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('Radiance', 'https://radiance.video'),
         ('keygen', 'https://keygen.co'),)

# Social widget
SOCIAL = (('github', 'https://github.com/ervanalb'),)

DEFAULT_PAGINATION = 3

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

STATIC_PATHS = ['media']
PLUGIN_PATHS = ['pelican-plugins', 'pelican-advthumbnailer']
PLUGINS = ['advthumbnailer', 'summary', 'neighbors']

AUTHOR_SAVE_AS = False
DIRECT_TEMPLATES = ['index', 'categories', 'tags']
SUMMARY_END_MARKER = "---BREAK---"
