//Example 15.4
clc;

C=2.2*10^-9;        //in farads
R=47*10^3;          //in ohms
x=2*%pi*R*C;
fl=invr(x);
printf('\nLower Cut Off frequency fl Of 2nd order Butterworth HPF = %.2f kHz\n',fl/1000)