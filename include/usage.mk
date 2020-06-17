
define bar
$(shell printf "#%.0s" {1..47}; echo)
endef

define usage_str
$(call bar)
$(shell printf "# %-20s : %-20s #\n" "model" "makefile sample")
$(call bar)

Usage: 

  $$ make [target] [parameter: <ENV1=VAR1> <ENV2=VAR2> ... ]

    Build target by makefile rules. 

    target: 

      <empty>                        Default target, show this usage.
      info                           Show macro information
      prepare                        Create build folder and other prereuisites. 
                                                               
    parameter:                                                 
                                                               
      YOCTO_WORK_DIR=[path]          Yocto working directory: downloads, tmp and i
                                     sstate_cache. 
                                                               
                                                               
endef
export usage_str

usage help: 
	@echo "$${usage_str}"

