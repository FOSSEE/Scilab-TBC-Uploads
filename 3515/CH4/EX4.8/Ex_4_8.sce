// Exa 4.8
format('v',7);
clc;
clear;
close;
// Given data 
iE1_by_I= 0.99;  // as it is given that iE1= 0.99 *I
VT= 0.025;// in volt
// Formula iE1= I/(1+%e^(-vid/VT))
// %e^(-vid/VT)= 1/iE1_by_I-1
vid= log( 1/iE1_by_I-1)*(-VT);// in volt
disp(round(vid*10^3),"Input differential signal in mVis : ")
