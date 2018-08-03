DOC_PATH=/tmp/subutai/docs

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of: "
	@echo "docs			get all documentation from subutai-io github projects"
	@echo "update		update all documentation"
	@echo "diff			show changes on documentation"
	@echo "clean		remove all documentation"
	@echo ""

docs: functions.sh
	[[ -d $(DOC_PATH) ]] || mkdir -p $(DOC_PATH)
	@echo "Cloning repository"
	. functions.sh && get_all_repos
	touch $(DOC_PATH)/docs

update:
	touch $(DOC_PATH)/docs

.PHONY: clean

clean:
	rm -rf /tmp/subuta/docs

