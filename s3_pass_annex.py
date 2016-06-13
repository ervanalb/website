#!/usr/bin/env python3

import os
import sys
import subprocess

WEB_ROOT = "/usr/share/nginx/html/website"
BASE_URI_PATH = "/media/"
S3_ROOT = "https://ervanalb-website.s3.amazonaws.com/"

def fail():
    print("Status:404 Not Found\n")
    print("Not found")
    sys.exit(0)

uri = os.environ["REQUEST_URI"]
if ".." in uri:
    fail()

if not uri.startswith(BASE_URI_PATH):
    fail()

uri = uri[len(BASE_URI_PATH):]

try:
    key = subprocess.check_output(["git", "annex", "lookupkey", uri], cwd=WEB_ROOT)
except subprocess.CalledProcessError:
    fail()

print("Status:301 Moved Permanently")
print("Location: " + S3_ROOT + str(key, encoding="UTF-8") + "\n")
