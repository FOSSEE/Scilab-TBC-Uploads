//Chapter-3, Example 3.9, Page 113
//=============================================================================
clc
clear
//INPUT DATA
N1=1600;//no of turns of solenoid
l=0.5;//length of wire of solenoid in m
N2=600;//no of turns of second coil
a=18*10^-4;//area of second coil in m^2
u0=4*%pi*10^-7;//permeability in free space
z=300;//rate of change of current(di1/dt) in A/sec
//CALCULATIONS
B=(u0*N1)/(l);//flux density in solenoid
M=(B*a*N2);//mutual inductance in mH
E=M*(z);//voltage induced
//OUTPUT
mprintf("Thus the mutual inductance is %f H \n",M);
mprintf("Thus the voltage induced is %f V \n",E); 
//note:answer given for voltage in text book is wrong.please check the calculations
//=================================END OF PROGRAM==============================
