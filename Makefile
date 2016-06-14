# Makefile for Eric's Website
# Inspired by Will's Savethevowels.org Pandoc Generation Script
# http://linguisticmystic.com/uploads/2015/spcv.txt

SRC_DIR = content
DST_DIR = site
INC_DIR = include
MEDIA_DIR = site/media
S3_BUCKET = ervanalb-website

MD_SRC = $(shell find $(SRC_DIR) -name \*.md -type f)
HTML = $(patsubst $(SRC_DIR)/%.md, $(DST_DIR)/%.html,$(MD_SRC))
INCLUDES = $(shell find $(INC_DIR) -name \*.html -type f)

JPEGS = $(shell find $(MEDIA_DIR) -name \*.jpg -type f \! -name \*_thumb.jpg)
THUMBNAILS = $(patsubst $(MEDIA_DIR)/%.jpg, $(MEDIA_DIR)/%_thumb.jpg,$(JPEGS))

MEDIA = $(THUMBNAILS)

# Pandoc flags
PFLAGS = --template $(INC_DIR)/template.html

# Targets
all: $(HTML) $(MEDIA)
clean:
	find $(DST_DIR)/* -maxdepth 0 '(' -name assets -o -name .gitignore -o -name media ')' -prune -o -exec rm -rf '{}' +
$(DST_DIR)/%.html: $(SRC_DIR)/%.md $(INCLUDES)
	@mkdir -p $(dir $@)
	pandoc $(PFLAGS) -o $@ $<
$(MEDIA_DIR)/%_thumb.jpg: $(MEDIA_DIR)/%.jpg
	convert $< -thumbnail 320x320\> $@
test: $(HTML)
	cd site; python -m http.server
s3: $(MEDIA)
	s3cmd sync --delete-removed -P $(MEDIA_DIR)/ s3://$(S3_BUCKET)/
