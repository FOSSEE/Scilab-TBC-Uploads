//chapter-8 page 345 example 8.12
//==============================================================================
clc;
clear;

//For a reflex klystron 
f=5*10^9;//Frequency of operation in hz
V0=1000;//anode voltage in V
d=0.002;//cavity gap in m
Vr=-500;//repeller voltage in V

//CALCULATION 
N=7/4;//mode value
VR=abs(Vr);
L=(((VR+V0)*N)/(6.74*10^(-6)*f*sqrt(V0)))/10^(-3);//Optimum length of the drift region in mm
u=5.93*10^5*sqrt(V0);// in m/sec
w=2*(%pi)*f;//angular frequency in rad
Tg=(w*d)/u;//Gap transit angle in rad

//OUTPUT
mprintf('\nOptimum length of the drift region is L=%1.3f mm \nGap transit angle is Tg=%1.3f rad',L,Tg);

//=========================END OF PROGRAM===============================
