

//example 5.9
//calculate input h.p of pump
clc;
//given
A=20;            //area of field
H=129;           //level to the highest land
h1=120.2;        //water level in well during discharge
Du=800;          //duty for rise;
eita=0.6;        //efficiency of the pump
Q=A/Du;
w=Q*1000;
lift=H-h1;
//design lift is taken as 9m
wd=w*9;
o=wd/75;
i=o/eita;
mprintf("Input h.p of pump=%i h.p",i);
