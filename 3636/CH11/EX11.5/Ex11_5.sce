clear;
clc;
B=10 //current gain
IB=0.6 //in A
VBE=1 //in V
RC=10 //in ohm
VCC=100 //in Vs

//Calculation
IC=B*IB //in A
VCE=VCC-(IC*RC) //in V
VCB=VCE-VBE //in V
PT=(VCE*IC)+(VBE*IB)

mprintf("Total power dissipation= %.1f W",PT)
disp("The BJT is working outside the SOA")
