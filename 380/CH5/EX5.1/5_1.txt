//Caption:Find the coil pitch for (a)2-pole winding (b)4-pole winding
//Exa:5.1
clc;
clear;
close;
P1=2;
P2=4;
S=10;//no. of slots
S_p1=S/P1;//slots per pole
y1=int(S_p1);//coil pitch in slots
S_s1=180/S_p1;//slot span
C_p1=S_s1*y1;//coil pitch(electrical)
disp(C_p1,'coil pitch for 2-pole winding (electrical)=');
S_p2=S/P2;//slots per pole
S_s2=180/S_p2;//slot span
y2=int(S_p2);//coil pitch in slots
C_p2=S_s2*y2;//coil pitch(electrical)
disp(C_p2,'coil pitch for 4-pole winding(electrical)=');