// Exa 5.28
format('v',6);
clc;
clear;
close;
// Given data
A=2000;//V/V
Bita= 0.1;// inV/V
Ri= 1;// in kohm
Ri= Ri*10^3;// in ohm
Ro= 1;// in kohm
Ro= Ro*10^3;// in ohm
Af= A/(1+A*Bita);
disp(Af,"The gain Af in volt is : ")
Rif= Ri*(1+A*Bita);// in ohm
disp(Rif*10^-3,"The input resistance in kohm is : ")
Rof= Ro/(1+A*Bita);// in ohm
disp(Rof*10^-3,"The output resistance in kohm is : ")


// Note: In the book, to finding the value of Af, Rif and Rof there is missprinting to putting the value of Bita but value of Af and Rif is correct because to calculating Af and Rif , the value of Bita is taken .1 (not .01)
//          but to evaluating the value of Rof calculation is also wrong so the answer in the book is wrong
