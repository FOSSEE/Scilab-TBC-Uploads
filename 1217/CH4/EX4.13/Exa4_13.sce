//Exa 4.13
clc;
clear;
close;
// given data
Vdc=10;//in Volt
R1=10;//in Kohm
R2=10;//in Kohm
R3=100;//in Kohm
RF=100;//in Kohm
// Part(i)  Balance Bridge : RA=RB=RC=RT=150ohm and VAB=0
RA=150;//in ohm
RB=150;//in ohm
RC=150;//in ohm
RT=150;//in ohm
VAB=0;//in Volt
Vo=(-RF/R1)*VAB;
// Part(ii)  Unbalance Bridge : RT=200ohm
RT=200;//in ohm
VA=(RA/(RA+RT))*Vdc;
VB=(RB/(RB+RC))*Vdc;
VAB=VA-VB;//in Volt
Vo=(-RF/R1)*VAB;
disp(0,"Balance bridge have output voltage Vo in volt is :");
disp(Vo,"Unbalance bridge have output voltage Vo in volt is :");

