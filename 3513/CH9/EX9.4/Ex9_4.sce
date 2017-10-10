//Determine the probability of success for the foll.
//page no 219
clear
clc;
PA=90;
PB=80;
PC=75;
PD=80;

RA = 0.8;
RB = 0.8;
RC = 0.8;
RD = 0.95;
RE = 0.85;

RABC = 1-((1-RA)*(1-RB)*(1-RC));
RABCDE1 = RABC*RD*RE;
mprintf("\RABC = %.4f \n",RABC);
mprintf("\RABCDE = %.4f \n",RABCDE1);
RABC=0.992;
RD=0.95;
RE = 1-((1-RE)*(1-RE));
RABCDE2 = RABC*RD*RE;
mprintf("\(b) WKT RABCDE = %.4f \n",RABCDE2);
I=RABCDE2-RABCDE1;
mprintf("\Improvement in R = %.4f \n",I);
