//Example 2.1
clear;
clc;

//Given
p1=10;//initial pressure in atm
p2=510;//final pressure in atm
R=0.082;// gas constant in L atm K^-1 mol^-1
T=300;// temperature in K

// To determine enthalpy change delH
delH=(0.039-((2*1.34)/(R*T)))*(p2-p1);//using the given equation for joule-thomson coefficient in dm^3 atm mol^-1
delH1=delH*(1.01325*100);// enthalpy change in joule mol^-1
mprintf('change in enthalpy = %f Joule mol^-1',delH1);
//end