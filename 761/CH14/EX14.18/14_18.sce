clc;
//page no 501
//prob no. 14.18
//A TDR display shows dscontinuity  at 1.4us & vf=0.8
t=1.4*10^-6;vf=0.8;c=3*10^8;//Speed of light
//Determination of distance of fault
d=(vf*c*t)/2;//One-half time is used to calculate
disp('m',d,'The distance is');