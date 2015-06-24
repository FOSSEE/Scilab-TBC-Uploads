// Exa 3.2
clc;
clear;
close;
// Given data
toh= 10^-6;// in sec
I=10;// in mA
I=I*10^-3;// in A
n=1;
V_T= 26;// in mV
V_T= V_T*10^-3;// in V
C_D= toh*I/(n*V_T);// in F
disp(C_D*10^9,"The diffusion capacitance in p-n junction diode in nF")

// Note: There are two mistake in the book. First one is this that they put the wrong value of I to evaluating the value of C_D because the value of I is given 10mA (i.e. 10*10^-3= 10^-2 amp) but they put 10^-3 at place 
//          of 10^-2 and second one is calculation error. So the answer in the book is wrong.
