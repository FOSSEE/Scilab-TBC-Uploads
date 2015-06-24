clear;
clc;
DelG=2866;//in J/mol
rhoG=2.25;//in gm/cm^3
rhoD=3.52;//in gm/cm^3
MC=12;//mass of carbon
P1=1;//in atm
P2=(-DelG/(MC/rhoD-MC/rhoG))+P1
printf('P2=%.1f Jcm^-3',P2)
R1=0.082;//in dm^3atm
R2=8.314;//in J
P21=P2*(R1*1000/R2)
printf('\nP21=%.1d atm',P21)

//There are some errors in the solution given in textbook
//page 23

