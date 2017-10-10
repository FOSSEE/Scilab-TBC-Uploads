clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 6

clear; clc; close; 
//
s=poly(0,'s')
h=syslin('c',10000*s/(s + 1)*(s + 5)*(s + 20))
clf();bode(h,0.01,100);
