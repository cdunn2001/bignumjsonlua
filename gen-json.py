#!/usr/bin/env python
import sys, os, random, string

str_len = 10
n_keys = 5
indentation = ' '

alpha = string.letters
Write = sys.stdout.write

def RandomQString():
    return '"' + ''.join(random.choice(alpha) for i in range(str_len)) + '"'
def GenJson(depth=0, indent=""):
    if depth == 0:
        Write(RandomQString())
        return
    sub_indent = indent + indentation
    sub_depth = depth - 1
    Write("{\n")
    for i in range(n_keys):
        if i != 0:
            Write(",\n")
        Write("%s%s: " %(sub_indent, RandomQString()))
        GenJson(sub_depth, sub_indent)
    Write("\n")
    Write("%s}" %indent)
def main(prog, n=1):
    global max_depth, indentation
    GenJson(int(n))
    print

main(*sys.argv)
