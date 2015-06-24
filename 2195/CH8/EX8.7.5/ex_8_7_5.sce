//Example Q.5: Lx and Rx
clc;
clear;
close;
//given data :
r1=28.5;//in ohms
L1=52.6;//in mH
R2=1.68;//in ohms
R3=80;//in ohms
R4=R3;// in ohms
Lx=(R3/R4)*L1;//inductance in mH
Rx=r1*(R3/R4)-R2;//in ohms
disp(Rx,"unknown resistance,Rx(ohm) = ")
disp(Lx,"unknown inductanceLx(mH) = ")
