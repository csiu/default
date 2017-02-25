#!/usr/bin/env python
from optparse import OptionParser
import sys
import os

usage = """ %prog [options] -i INFILE
"""

def main():
    print "Hello world"

if __name__ == '__main__':
    parser = OptionParser(usage)

    parser.add_option(
        "-i", dest="infile",
        action="store",
        type="string",
        help="path to input file")

    ## get at the arguments
    (options, args) = parser.parse_args()

    ## make sure pat the infile exist
    if (options.infile == None):
        parser.print_help()
        sys.exit()
    ## make sure infile is valid
    if (not os.path.isfile(options.infile)):
        sys.stderr.write("error: '%s' is not a valid file\n" % options.infile)
        sys.exit()

    ## do something...
    main()
