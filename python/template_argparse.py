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

    ## get at the arguments
    args = parser.parse_args()

    ## do something...
    main()
