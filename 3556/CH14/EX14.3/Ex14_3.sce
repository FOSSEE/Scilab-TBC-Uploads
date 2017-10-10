clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 3

clear; clc; close; 
//
w=poly(0,'w')
h=syslin('c',(200*w)/(w^2+12*w+20))
clf();bode(h,0.01,100);
