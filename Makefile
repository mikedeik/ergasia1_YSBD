ht:
	@echo " Compile ht_main ...";
	gcc -I ./include/ -L ./lib/ -Wl,-rpath,./lib/ ./examples/ht_main.c ./src/hash_file.c ./src/hash_function.c -lbf -o ./build/runner -O2
	rm -rf *.db
bf:
	@echo " Compile bf_main ...";
	gcc -I ./include/ -L ./lib/ -Wl,-rpath,./lib/ ./examples/bf_main.c -lbf -o ./build/runner -O2
	rm -rf *.db

new:
	@echo " Compile new_main ...";
	gcc -I ./include/ -L ./lib/ -Wl,-rpath,./lib/ ./examples/new_main.c ./src/hash_file.c ./src/hash_function.c -lbf -o ./build/runner -O2
	rm -rf *.db