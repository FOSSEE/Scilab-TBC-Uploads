//Exa 2.16
clc;
clear;
close;
//given data
d1=10*10^-3;// in mm
r1=d1/2;
K=0.2;// in W/mK
T_max=177;// in degree C
T_infinite=27;// in degree C
ho=10;// in W/m^2K
R=10; // in W/m
rc=K/ho;// in m
x=rc-r1;// in m
q_by_L= (T_max-T_infinite)/(log(rc/r1)/(2*%pi*K)+1/(2*%pi*ho*rc));
// Also q_by_L = I^2*R
I= sqrt(q_by_L/R);// in amp
disp(I,"The maximum possible current in amphere")

// Note: Answer in the book is wrong