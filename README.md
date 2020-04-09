# sampifier
Abbr for sample profiler

A profiler DLL (Dynamically Loaded Library) that run on the background, preiodically probe the executing function.
And then get its CPU time by calculation its appearence.

Since it server as a ddl, you won't have to modify your source code or even during compilation.
The only time you will have to use it is in execute time, as a prefetched load library.
Since it doesn't inject any analytics code into your function calls, it minimize the performance impact on measuring.


1. Environment Requirement
	1. `libunwind`  
		No matter you want to compile from source or get libunwind-dev from apt-get, you have to install it  
		By default, we assume you go a libunwind-XXX.so copy in `/usr/local/lib/`, if not, please re-config Makefile  
2. Run sanity test  
	`make` then `make test`