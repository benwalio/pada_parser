import sys

for line in stdin:
    line = line.strip()
    words = line.split()

    for word in words:
        print "%s\t%s" (1,word)
