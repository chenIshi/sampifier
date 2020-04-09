ddl = libhotspot.so
exec = main
cc = g++
srcDir = src
ddlDir = /tmp
testDir = test
unwindDdl = /usr/local/lib/libunwind-x86_64.so

all : $(ddl) $(exec)

# g++ -D_GNU_SOURCE -shared -ldl -fPIC -lunwind -o /tmp/libhotspot.so hotspot.cpp /usr/local/lib/libunwind-x86_64.so

LDFLAG:= -D_GNU_SOURCE -shared -ldl -fPIC -lunwind

$(ddl) : $(srcDir)/hotspot.cpp
	$(cc) $(LDFLAG) -o $(ddlDir)/$(ddl) $< $(unwindDdl)


$(exec) : $(testDir)/main.cpp
	$(cc) $< -o ./$(testDir)/$(exec)

# LD_PRELOAD=/tmp/libhotspot.so ./main

test : $(ddl) $(exec)
	LD_PRELOAD=$(ddlDir)/$(ddl) ./$(testDir)/$(exec)

.PHONY: clean

clean:
	rm ./$(testDir)/$(exec)