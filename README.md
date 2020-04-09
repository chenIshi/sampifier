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
3. Reference articles
	1. Dynamic Linker
		* [你所不知道的 C 語言：動態連結器篇](https://hackmd.io/@sysprog/c-dynamic-linkage)
	2. Libunwind Tutorial
		* [自制 Profiler 第一部分](https://hualet.org/blog/2018/05/13/%E8%87%AA%E5%88%B6-profiler-%E7%AC%AC%E4%B8%80%E9%83%A8%E5%88%86/)
		* [自制 Profiler 第二部分——调用栈回溯](https://hualet.org/blog/2018/05/14/%E8%87%AA%E5%88%B6-profiler-%E7%AC%AC%E4%BA%8C%E9%83%A8%E5%88%86%E8%B0%83%E7%94%A8%E6%A0%88%E5%9B%9E%E6%BA%AF/)
		* [Libunwind Gperf-simple](https://github.com/libunwind/libunwind/blob/master/tests/Gperf-simple.c)
		* [Gperftools](https://github.com/gperftools/gperftools)