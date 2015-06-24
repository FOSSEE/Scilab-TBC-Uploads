clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.2
// Page 349
printf("Example 6.2, Page 349 \n \n");

// solution

// basis = 2000kg/h liquid feed rate
F = 2000/28.84 //kmol/h
//D = distillate, W = residue flow rate
//N2 balance
// F*.79 = .999D + .422W    (i)
// 54.840 = D + .4224W      (ii)
// solving it
W = 25.118 //kmol/h
D = 44.230 //kmol/h
//using fig 6.4 and 6.5
// trial method is used for flash calculations
// Trial I
x = .75
// from fig 6.4
y = .8833
// from fig 6.5
Hl = 1083.65
Hv = 6071.7
Hf = .3*Hv+Hv*.7
// calculating we get Emix is not close to 2592.2kJ/kmol
//Trial II
x = .71
y = .859
Hl = 1085.6
Hv = 6118.6
Hf = .3*Hv+.7*Hl //kJ/kmol
// which is aproox equal to 2595.2kJ/kmol, so flashing will occur
printf("composition of vapour liquid mix : \n mol fraction N2 = "+string(x)+" in liquid phase and "+string(y)+" in vapour phase.")

