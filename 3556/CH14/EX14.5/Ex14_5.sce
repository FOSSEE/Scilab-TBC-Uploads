clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 5

clear; clc; close; 
//
s=poly(0,'s')
h=syslin('c',(s + 1.00)/(s^2+12*s+100))
clf();bode(h,0.01,100);
