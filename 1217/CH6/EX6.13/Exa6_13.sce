// Exa 6.13
clc;
clear;
close;
// given data 
fL=200;//in Hz
fH=1;//in KHz
AFBP=4;//unitless
//for LP section design
//assume C=0.01 uF
C=0.01;//in uF
R=1/(2*%pi*fH*1000*C*10^-6);//in ohm
disp("For low pass section design component values are :");
disp(R/1000,"Value of R in Kohm is :")
disp(C,"Value of C in uF is :")
//for HP section design
//assume C=0.05 uF
C=0.05;//in uF
R=1/(2*%pi*fL*1000*C*10^-6);//in ohm
disp("For high pass section design component values are :");
disp(R,"Value of R in Kohm is :");
disp(C,"Value of C in uF is :");
disp("We have AFBP=AFHP*AFLP=4");
disp("The gain of HP section as well as LP section could be set equal to 2 to obtain overall gain of 4. This gives equal value for input and feedback resistors for both sections, i.e. ");
disp("R=10 Kohm");
fc=sqrt(fH*fL*1000);//in Hz
BW=fH*1000-fL;//in Hz
Q=fc/BW;//unitless
disp(fc,"Center frequency in Hz is : ");
disp(BW,"BW in Hz is :");
disp(Q,"Selectivity is :")
disp("As Q<10, hence the given filter is wide band pass filter.")


