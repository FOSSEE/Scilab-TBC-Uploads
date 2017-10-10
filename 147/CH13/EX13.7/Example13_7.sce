close();
clear;
clc;
//from solved example 13.6
V = 120; //V
Pc = 75; //W
Rc = V^2/Pc;
I = 1.5; //A
pf = 0.417;
Im = sqrt(I^2 - (I*pf)^2); //A
Ic = V/Rc; //A
Xm = V/Im; //ohm
mprintf("Rc = %d ohm\nXm = %d ohm",Rc,Xm);
