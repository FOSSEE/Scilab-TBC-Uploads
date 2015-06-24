//Chapter-1, Example 1.18, Page 27
//=============================================================================
clc;
clear;
//INPUT DATA
p20=1.724*10^-8;//specific resistance of copper in ohm m
a=0.0043;//temperature coefficient of copper at 0 degree centigrade measured in per degree centigrade
r1=8;//inner radius of copper circular ring in cm
r2=6;//axial thickness in cm
r3=4;//radial thickness in cm
a1=r2*r3*10^-4;//area of cross-section of ring in m^2
r2=r2*2;
l=%pi*((r1+r2)/2)/100;//length of semicircular ring between faces in m
t1=20;//temperature 20 degree centigrade
t2=50;//temperature 50 degree centigrade
//CALCULATIONS 
R20=p20*(l/a1);//resistance of ring at 20 degree centigrade in ohm
R50=R20*[(1+(a*t2))/(1+(a*t1))];//resistance of ring at 50 degree centigrade in ohm
//OUTPUT
mprintf("Thus the resistance of wire at 50 degree centigrade is %g ohms",R50);
 

//=================================END OF PROGRAM==============================
