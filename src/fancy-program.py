#!/bin/python3

import os
import argparse

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('--input',  dest='input',  help='input data')
parser.add_argument('--output', dest='output', help='output folder')
args = parser.parse_args()

with open(args.input) as f:
    x = int(f.read())

outpath=f"{args.output}/{x}/"
os.makedirs(outpath)

def fun(x):
    """ Our fancy pancy function """
    return x*x

with open(f'{outpath}/{y}', 'w') as f:
    f.write(fun(x))
