//Dalton's Law of Partial Pressures

clear;
clc;

printf("\t Example 5.15\n");

PT=762;//pressure total, mmHg
PH2O=22.4;//pressure of water vapor, mmHg
PO2=PT-PH2O;//pressure of O2, frm Dalton's law, mmHg
M=32;//mol mass of O2, g
R=0.0821;//universal Gas constant, L.atm/K.mol
T=24+273;//temp in K
V=0.128;//volume in L
m=(PO2/760)*V*M/(R*T);//mass of mass of O2 collected, g

printf("\t the mass of O2 collected is : %4.3f g\n",m);


//End
