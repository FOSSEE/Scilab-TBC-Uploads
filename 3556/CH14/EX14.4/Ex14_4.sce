clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 4

clear; clc; close; 
//
w=poly(0,'w')
h=syslin('c',(w+10)/(w^3+10*w^2+25*w))
clf();bode(h,0.01,100);
