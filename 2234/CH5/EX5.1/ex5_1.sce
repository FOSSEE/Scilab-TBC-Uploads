clc;
n=10^6;    //no. of electrons
e=1.6*10^-19;  //charge on an electron in C
q=n*e;   //calculating total charge
t=10^-3;   //time in second
I=q/t;    //calculating current
disp(I,"Current flowing in Ampere = ");  //displaying result