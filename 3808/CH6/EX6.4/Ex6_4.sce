//Chapter 06: Counting

clc;
clear;

bits=2 //possible bits are either 0 or 1
ns=7 //no of bits in the string (ie). length of the string
sol=bits**ns

// 7 bits are capable of taking either 0 or 1 so by PRODUCT RULE
mprintf("Total different bit strings of length seven are %d",sol)
