############################################################################
# CONFIDENTIAL
#
# Copyright (c) 2013 - 2017 Qualcomm Technologies International, Ltd.
#
############################################################################
# Make temporary C file,
# This has no real content but includes the headers we want to share definitions from

import sys
import os

headers = ''
counter = 0
while counter < len(sys.argv):
    if sys.argv[counter][0:2] == '-H':
        headers = '#include "' + sys.argv[counter].replace('-H', '') + '"\n' + headers
    counter += 1
dest = sys.argv[1]

# Put a cautionary "DO NOT EDIT" comment into the generated file
c_comment = "/* Caution, this file has been auto-generated by " + __file__ +";\n"
c_comment += " * its purpose is to enable a dummy-built object which is subsequently parsed for symbolic information.\n"
c_comment += " * MANUAL EDITS TO THIS FILE MAY BE OVERWRITTEN WHEN REBUILDING! */\n"
# Make sure the file contains some code
c_main = "void main( void )\n{\n\t\n}\n"

# Add the list of headers
c_main =  c_comment + headers + c_main

# And write the result
with open(dest, 'w') as f:
    f.write(c_main)
