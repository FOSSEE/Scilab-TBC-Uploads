//example 10.4//
//design a 2 decade BCD D/A converter//
clc
//clears the screen//
clear
//clears already existing variables//
disp('the circuit of given figure can be used for BCD D/A converter. The binary inputs corresponding to LSB are applied to b3,b2,b1,b0 and those corresponding to the next digit at b7,b6,b5,b4. the value of r is chosen so as to make the input current of OP-AMP corresponding to LSD as 1/10th of that of current due to MSD, and is given by')
disp('((V(R)*(8/7*R))/(R*(r+8*R/7)+r*8/7*R))=V(R)/(10*R)')
disp('r=4.8R')