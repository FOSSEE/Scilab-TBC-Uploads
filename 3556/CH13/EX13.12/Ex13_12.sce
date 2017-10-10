clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 12

clear; clc; close; 
//
// Given data
ST  = 42000.0000;
n   =     5.0000;
VL2 =   240.0000; 
//
// Calculatioons Line Voltage and Current on The Primary Side 
IL2 = ST/(sqrt(3)*VL2);
IL1 = (n/(sqrt(3)))*IL2;
VL1 = (sqrt(3)/n)*VL2;
// Calculations KVA Rating 
KVA = ST/3
// Display the result
disp("Example 13-12 Solution : ");
disp("a. Type Transformer Connection is Y - Delta ")
disp("b. Line Voltage and Current on The Primary Side  : ");
printf(" \n IL1       = Line Current on The Primary Side      = %.3f A",IL1)
printf(" \n VL1       = Voltage Current on The Primary Side   = %.3f Voltage",VL1)
disp("c. KVA Rating   : ");
printf(" \n KVA       = KVA Rating Each TRansformer           = %.3f KVA",KVA/1000)
