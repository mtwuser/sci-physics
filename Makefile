# Zero-Cloud Node Makefile — sci-physics (knowledge)
ZCG_DIR ?= $(HOME)/zero-cloud-gravity
ZCG_BIN ?= $(if $(wildcard $(ZCG_DIR)/.venv/bin/zcg),$(ZCG_DIR)/.venv/bin/zcg,zcg)
PARENT_DIR ?= 
TARGET_REPO ?= $(PARENT_DIR)
PARENT_FLAG = $(if $(PARENT_DIR),--parent-dir $(PARENT_DIR),)
PR_FLAGS ?= --create-pr

.PHONY: help status sync diff task complete consult link unlink apply-template mcp-test horizon upstream-diff delegate promote authority roster decision env-gate install-plugin uninstall-plugin activate-plugin deactivate-plugin switch-env deploy-plugin plugin
help:
	@echo "Zero-Cloud Node: sci-physics (knowledge)"
	@echo "  make status"
	@echo "  make sync"
	@echo "  make diff"
	@echo "  make task"
	@echo "  make complete"
	@echo "  make consult"
	@echo "  make link"
	@echo "  make unlink"
	@echo "  make apply-template"
	@echo "  make mcp-test"
	@echo "  make horizon"
	@echo "  make upstream-diff"
	@echo "  make delegate"
	@echo "  make promote"
	@echo "  make authority"
	@echo "  make roster"
	@echo "  make decision"
	@echo "  make env-gate"
	@echo "  make install-plugin"
	@echo "  make uninstall-plugin"
	@echo "  make activate-plugin"
	@echo "  make deactivate-plugin"
	@echo "  make switch-env"
	@echo "  make deploy-plugin"
	@echo "  make plugin"

status:
	@$(ZCG_BIN) status $(CURDIR) $(PARENT_FLAG)
sync:
	@$(ZCG_BIN) sync-layer $(CURDIR) $(PARENT_FLAG) $(if $(TEMPLATE),--templates $(TEMPLATE),) $(if $(STRATEGY),--strategy $(STRATEGY),)
diff:
	@$(ZCG_BIN) diff-project $(CURDIR) $(PARENT_FLAG)
task:
	@$(ZCG_BIN) start-task $(CURDIR) --task "$(TASK)" $(if $(TICKET),--ticket $(TICKET),)
complete:
	@$(ZCG_BIN) complete-task $(CURDIR) $(if $(PARENT_SYNC),--parent-dir $(PARENT_DIR),$(PARENT_FLAG)) --task "$(TASK)" $(if $(DELIVERABLE),--deliverable "$(DELIVERABLE)",) $(if $(SUMMARY),--summary "$(SUMMARY)",) $(if $(CREATE_PR),--create-pr,)
consult:
	@$(ZCG_BIN) consult-layer $(CURDIR) $(PARENT_FLAG) --layer $(if $(LAYER),$(LAYER),self) --query "$(QUERY)" $(if $(PATH_TARGET),--path $(PATH_TARGET),) $(if $(TIER),--tier $(TIER),)
link:
	@$(ZCG_BIN) link $(CURDIR) $(if $(FROM),--from $(FROM),--target $(TARGET)) $(if $(REL),--relation $(REL),) $(if $(REF),--ref $(REF),) $(if $(URL),--url $(URL),) $(if $(PACKS),--packs $(PACKS),)
unlink:
	@$(ZCG_BIN) unlink $(CURDIR) --target $(TARGET)
apply-template:
	@$(ZCG_BIN) apply-project $(CURDIR) --template $(if $(TEMPLATE),$(TEMPLATE),software-engineering) --include-defaults
mcp-test:
	@$(ZCG_BIN) list-templates $(CURDIR)
horizon:
	@$(ZCG_BIN) inspect-horizon $(CURDIR) $(PARENT_FLAG)
upstream-diff:
	@$(ZCG_BIN) compare-upstream $(CURDIR) $(PARENT_FLAG) $(if $(TEMPLATE),--template $(TEMPLATE),) $(if $(APPLY_SAFE),--apply-safe,)
delegate:
	@$(ZCG_BIN) delegate-to-child $(CURDIR) --to-child $(CHILD) --task "$(TASK)" $(if $(TICKET),--ticket $(TICKET),) $(if $(PRIORITY),--priority $(PRIORITY),) $(if $(SURFACE),--surface $(SURFACE),) $(if $(SOURCE),--source $(SOURCE),) $(if $(CREATE_PR),--create-pr,)
promote:
	@$(ZCG_BIN) promote-from-project $(CURDIR) --source $(SOURCE) $(if $(TARGET_REPO),--upstream-dir $(TARGET_REPO),$(if $(PARENT_DIR),--upstream-dir $(PARENT_DIR),)) $(if $(LAYER),--to-layer $(LAYER),) $(if $(TEMPLATE),--to-template $(TEMPLATE),) $(PR_FLAGS)
authority:
	@$(ZCG_BIN) check-authority $(CURDIR) $(PARENT_FLAG) --op $(if $(OP),$(OP),release) $(if $(EMAIL),--email $(EMAIL),)
roster:
	@$(ZCG_BIN) manage-roster $(CURDIR) $(if $(ADD),--add $(ADD),) $(if $(REMOVE),--remove $(REMOVE),) $(if $(ROLE),--role $(ROLE),)
decision:
	@$(ZCG_BIN) record-decision $(CURDIR) --item "$(ITEM)" --decision $(DEC) --reason "$(REASON)"
env-gate:
	@$(ZCG_BIN) check-env-promotion $(CURDIR) $(PARENT_FLAG) --to-env $(if $(ENV),$(ENV),tst) $(if $(FILES),--files $(FILES),) $(if $(EMAIL),--email $(EMAIL),)
install-plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action install
uninstall-plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action uninstall
activate-plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action activate
deactivate-plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action deactivate
switch-env:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action switch-env
deploy-plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action deploy
plugin:
	@$(ZCG_BIN) apply-project $(CURDIR) $(PARENT_FLAG) $(if $(PLUGIN),--template $(PLUGIN),) $(if $(ENV),--env $(ENV),) $(if $(EMAIL),--email $(EMAIL),) --service-action $(if $(ACTION),$(ACTION),healthcheck)
