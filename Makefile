all: secd.w
	cweave secd
	luatex secd
	ctangle secd
	clang -std=c2x secd.c -o secd -Wno-shift-count-overflow
