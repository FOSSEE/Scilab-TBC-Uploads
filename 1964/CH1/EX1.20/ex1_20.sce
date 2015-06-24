//Chapter-1, Example 1.20, Page 28
//=============================================================================
clc;
clear;
//INPUT DATA
l1=7.5;//length of aluminium wire in m
d1=1*10^-3;//diameter of aluminium wire in m 
r1=0.5*d1;//radius of aluminium wire in m
a1=%pi*((r1)^2);//area of cross-section in m^2 for aluminium wire 
p1=0.028;//resistivity of aluminium in micro ohm-m
l2=6;//length of copper wire in m
p2=0.017;//resistivity of copper in micro ohm-m
I=5;//current through parallel combination in A
I1=3;//current through aluminium wire in A
I2=I-I1;//current through copper wire in A
//CALCULATIONS 
R1=p1*l1/a1;//resistance of aluminium wire in ohm
V1=I1*R1;//voltage drop across the end of Al wire in V
//since the wires are connected in parallel,so V1=V2
a2=I2*p2*l2/V1;//area of cross-section in m^2 for copper wire  
d2=sqrt(4*a2/%pi);//diameter of copper wire in m 
//OUTPUT
mprintf("Thus the diameter of copper wire is %g m",d2);
 
//=================================END OF PROGRAM==============================
