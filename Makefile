CC=gcc
DEBUG_CFLAGS=-g
CFLAGS=-I./include -std=gnu99 $(DEBUG_CFLAGS)
LDFLAGS=

BINDIR=bin
INCDIR=include
LIBDIR=lib
SRCDIR=src

# MAIN TARGET
## all: $(LIBDIR)/dbglib.a $(BINDIR)/test-001.out $(BINDIR)/test-002.out $(BINDIR)/test-003.out
all: $(LIBDIR)/dbglib.a $(BINDIR)/test-001.exe


####################################################################
####################################################################
# COMPILATION WORK
####################################################################
####################################################################


####################################################################
# LIBRARY BUILD
####################################################################
$(LIBDIR)/dbglib.a: build/cblasl0.o build/cblasl1.o
	ar -rc $@ $^

build/cblasl0.o: $(SRCDIR)/cblasl0.c $(INCDIR)/cblasl0.h
	$(CC) $(CFLAGS) $< -c -o $@

build/cblasl1.o: $(SRCDIR)/cblasl1.c $(INCDIR)/cblasl1.h
	$(CC) $(CFLAGS) $< -c -o $@

####################################################################
# TEST BUILD
####################################################################
# TEST 001
$(BINDIR)/test-001.exe: build/test-001.o $(LIBDIR)/dbglib.a
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

build/test-001.o: $(SRCDIR)/test-001.c $(INCDIR)/cblas.h $(INCDIR)/cblasl0.h $(INCDIR)/cblasl1.h
	$(CC) $(CFLAGS) $< -c -o $@

# # TEST 002
# $(BINDIR)/test-002.out: build/test-002.o $(LIBDIR)/dbglib.a
# 	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

# build/test-002.o: $(SRCDIR)/test-002.c $(INCDIR)/cblas.h $(INCDIR)/cblasl1.h $(INCDIR)/cblasl2.h
# 	$(CC) $(CFLAGS) $< -c -o $@

# # TEST 003
# $(BINDIR)/test-003.out: build/test-003.o $(LIBDIR)/dbglib.a
# 	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

# build/test-003.o: $(SRCDIR)/test-002.c $(INCDIR)/cblas.h $(INCDIR)/cblasl1.h $(INCDIR)/cblasl2.h
# 	$(CC) $(CFLAGS) $< -c -o $@


####################################################################
# CLEAN
####################################################################
clean:
	rm -f ./build/*.o ./$(LIBDIR)/*.a ./$(BINDIR)/*.exe $(SRCDIR)/*~ $(INCDIR)/*~


####################################################################
####################################################################
# RUNNING WORK
####################################################################
####################################################################

####################################################################
# TEST RUNS
####################################################################
runtests: test-001
	@echo "[END of TESTS]..."

test-001:
	./$(BINDIR)/test-001.exe
	@echo "[Test-001-END]"

# test-002:
# 	./$(BINDIR)/test-002.out
# 	@echo "[Test-002-END]"

# test-003:
# 	./$(BINDIR)/test-003.out
# 	@echo "[Test-002-END]"
