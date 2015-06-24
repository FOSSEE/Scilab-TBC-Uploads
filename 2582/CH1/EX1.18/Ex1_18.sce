//Ex 1.18
clc;clear;close;
format('v',5);
IREF=1;//mA
IO2=20;//micro A
IO3=40;//micro A
VBE1=0.7;//V
VT=26;//mV
VCC=10;//V
VEE=-VCC;//V
R=(VCC-VBE1-VEE)/IREF;//kohm
RE2=VT*10^-3/(IO2*10^-6)*log((IREF*10^-3)/(IO2*10^-6));//ohm
RE2=RE2/1000;//kohm
RE3=VT*10^-3/(IO3*10^-6)*log((IREF*10^-3)/(IO3*10^-6));//ohm
RE3=RE3/1000;//kohm
disp(RE3,RE2,R,"Value of resistance R, RE2 & RE3 for widlar current source design is(kohm) : ");
VBE2=VBE1-RE2*IO2*10^-3;//V
VBE3=VBE1-RE3*IO3*10^-3;//V
format('v',7);
disp(VBE3,VBE2,"Values of VBE2 & VBE3(V) : ");
