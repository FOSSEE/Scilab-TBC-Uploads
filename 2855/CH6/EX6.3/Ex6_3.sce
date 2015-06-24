//chapter6
//page no 140
//example 6-3
//given
clear;
clc;
//data insufficient
Rth=17.70;           // Rth assumed minimum
Rthc_H=0.65;        //k/w
Rthj_a=33;          //k/w
Rthj_c=3;           //k/w
RthH_a=1/(1/Rth-1/Rthj_a)-Rthj_c-Rthc_H;
printf("RthH-a <= %0.1f K/W",RthH_a);
//disp(RthH_a,"heat sink thermal resistance");
