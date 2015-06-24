// Exa 5.1
clc;
clear;
close;
// Given data
V_REF= 10;// in volt
w2= V_REF/2;// The second MSB weight in volt
disp(w2,"The second MSB weight in volt")
w3= V_REF/4;// The third MSB weight in volt
disp(w3,"The third MSB weight in volt")
w4= V_REF/8;// The forth MSB weight in volt
disp(w4,"The forth MSB weight in volt")

// (i)
r_DAC= w4;// resolution of the DAC in volt
disp(r_DAC,"Resolutio of the DAC in volt");

//(ii)
FSO= V_REF+w2+w3+w4;//full scale output in volt
disp(FSO,"Full scale output in volt")

// (iii)
FSO_R= FSO/4;// full scale output when the feedback resistor is made one fourth of R in volt
disp(FSO_R,"The full scale output when the feedback resistor is made one fourth of R i volt")
