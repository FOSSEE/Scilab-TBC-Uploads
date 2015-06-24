clc
clear

//Conditions at 9 bar
P=9;                //in bar
Tsat=175.4+273;     //in K
Vg=0.215;           //in m^3/kg
Hf=742.8;           //in kJ/kg
Hfg=2031.1;         //in kJ/kg
Hg=2773.9;          //in kJ/kg
T2=250+273;         //in K
x=0.91;             //Dryness Fraction
V1=x*Vg;
V2=0.2696;          //From Steam Table
W=P*100*(V2-V1);
printf('The Work Output: %2.2f kJ/kg',W);
printf('\n');
H1=Hf+(x*Hfg);
H2=2946.3;          //From steam table in kJ/kg
Q=H2-H1;
printf('The heat supplied to steam: %2.2f kJ/kg',Q);
printf('\n');
U=Q-W;
printf('The internal energy of steam increases by: %2.2f kJ/kg',U);
printf('\n');
