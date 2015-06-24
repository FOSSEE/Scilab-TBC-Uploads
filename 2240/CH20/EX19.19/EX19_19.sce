// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_19
clc; clear;
// Inductances L1 and L2 are each 8 mH. How much is Leq?

// Given data

l1 = 8*10^-3;   // Inductor 1=8 mH
l2 = 8*10^-3;   // Inductor 2=8 mH

a = 1/l1;
b = 1/l2;

Leq = 1/(a+b);
disp(Leq,'The Equivalent Inductance in Henry')
disp ('i.e 4 mH')
