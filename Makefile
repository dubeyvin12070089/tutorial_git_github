hello: 
	echo "hi"
	echo "What's up?"
xrun_compile:
	xrun -compile test.sv -sv -64bits -work new_lib -makelib new_lib -endlib
shell_cmd:
	echo "hello"
all: hello shell_cmd

hey: hello shell_cmd
	echo $@
	echo $?
	echo $^
.PHONY: all
