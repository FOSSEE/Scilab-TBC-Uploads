//Calculate the reliability of the configuration
//page no 218
clear
clc;
RA = 0.7;
RB = 0.7;
RC = 0.9;
RD = 0.8;
RE = 0.9;

RAB = 1-((1-RA)*(1-RB));
RABC=RAB*RC;
RABCD = 1-((1-RABC)*(1-RD));
RABCDE = RABCD*RE;
mprintf("\RABCDE = %.4f \n",RABCDE);
