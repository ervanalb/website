# Makefile for Eric's Website
# Inspired by Will's Savethevowels.org Pandoc Generation Script
# http://linguisticmystic.com/uploads/2015/spcv.txt

SRC_DIR = content
DST_DIR = site
INC_DIR = include

MD_SRC = $(shell find $(SRC_DIR) -name \*.md -type f)
HTML = $(patsubst $(SRC_DIR)/%.md, $(DST_DIR)/%.html,$(MD_SRC))
INCLUDES = $(shell find $(INC_DIR) -name \*.html -type f)

# Pandoc flags
PFLAGS = --template $(INC_DIR)/template.html

# Targets
all: $(HTML)
clean:
	find $(DST_DIR)/* -maxdepth 0 -name 'assets' -prune -o -exec rm -rf '{}' +
$(DST_DIR)/%.html: $(SRC_DIR)/%.md $(INCLUDES)
	@mkdir -p $(dir $@)
	pandoc $(PFLAGS) -o $@ $<
