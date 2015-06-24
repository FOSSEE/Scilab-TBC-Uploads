//Chapter-1, Example 1.1, Page 18
//=============================================================================
clc;
clear;
//INPUT DATA
// details for the first wire
l1=1;//length in m
R1=2;//resistance in ohms
x=R1;//say
d=1;//say 
p=1;//say
d1=d;//say diameter in m 
p1=p;//say specific resistance of  wire
//details for the second wire
l2=3;//length in m
d=1;//say 
p=1;//say
d2=2*d;//say diameter in m 
p2=2*p;//say specific resistance of  wire
//CALCULATIONS
R1=p1*l1/(%pi*d*d/4);//(R1=p1*l1/a1), where a1 is cross sectional area of first wire with diameter d as (%pi*d*d/4)---------------equation 1
R2=p2*l2/(%pi*(4*d*d)/4);//(R2=p2*l2/a2), where a2 is cross sectional area of  second wire with diameter 2d as (%pi*((2*d)*(2*d))/4)-------------equation 2
//dividing equation 1 by equation 2
z=R1/R2;
R2=x/z;
//OUTPUT
mprintf("Thus the resistance of second wire is %1.0f ohm \n",R2);

//=================================END OF PROGRAM==============================
