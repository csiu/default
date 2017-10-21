#!/usr/bin/env python
import argparse

usage = """
"""

def main():
    print "Hello world"

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=usage,
        formatter_class=argparse.RawTextHelpFormatter)

    parser.add_argument(
        '-i', '--infile', dest='infile',
        action='store',
        default=None,
        type=str,
        #choices=['','',''],
        required=True,
        help='path to input file')

    ## Setting an argument grouping
    # parser_group1 = parser.add_argument_group('Group 1 arguments')
    # parser_group1.add_argument(...)

    ## get at the arguments
    args = parser.parse_args()

    ## do something...
    main()
