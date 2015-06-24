// Exa 5.6
clc;
clear;
close;
// given data 
RA=6.8;//in Kohm
RB=3.3;//in Kohm
C=0.1;//in uF
fo=1.45/((RA+2*RB)*C);// in KHz
d=(RA+RB)/(RA+2*RB);
disp(fo,"Frequency of oscillation in Khz is ; ");
disp(d*100,"Duty cycle in % is :");