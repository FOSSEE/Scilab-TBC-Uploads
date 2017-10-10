//Determine the reliability of the system for 20 hrs. of operating period
//page no 220
clear
clc;
dA = 0.01;
dB = 0.015;
dC = 0.02;
dD = 0.02;
dE = 0.025;
t=20;
RA =%e^(-dA*t);
RB =%e^(-dB*t);
RC =%e^(-dC*t);
RD =%e^(-dD*t);
RE =%e^(-dE*t);
RBC = 1-((1-RB)*(1-RC));
RABC = RA*RBC;
RABCD = 1-((1-RABC)*(1-RD));
RABCDE = RE*RABCD;

mprintf("RABCDE = Rs = %.4f \n",RABCDE);
