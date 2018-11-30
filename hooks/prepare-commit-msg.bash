#!d/Dev/tools/anaconda3/python
import sys, os
commit_msg_filepath = sys.argv[1]
with open(commit_msg_filepath, 'w') as f:
	f.write("# Lutfen commit mesaji girin!")