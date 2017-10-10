close();
clear;
clc;
Vdsq = 15; //V
Vdd = 24; //V
Idq = 2; //mA
Idq_max = 2+0.4;
Idq_min = 2-0.4;
Rs = 0-(-3)/(4-0); //ohm
Rd = (Vdd-Vdsq-Idq*Rs)/Idq; //kohm
mprintf("Rd = %0.2f kohm",Rd);