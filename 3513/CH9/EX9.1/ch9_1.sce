//Calculate the reliability of system RA = 0.8
//page no 218
clear
clc;
RA = 0.8;
RB = 0.7;
RC = 0.9;
RAB = 1-((1-RA)*(1-RB));
RS=RAB*RC;
mprintf("\RS = %.2f \n",RS);
