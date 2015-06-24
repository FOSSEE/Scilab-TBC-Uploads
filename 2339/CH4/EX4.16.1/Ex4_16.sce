clc
clear

//Conditions at 10 bar
P=10;               //in bar
Tsat=179.9+273;     //in K
Hf=762.8;           //in kJ/kg
Hfg=2015.3;         //in kJ/kg
Hg=2778.1;          //in kJ/kg
Vg=0.194;           //in m^3/kg
x=0.7;              //Dryness Fraction
V=x*Vg;
m=0.2/V;            //mass in kg
mf=2/V;            //mass in kg
H=Hf+(x*Hfg);
H_tot=H*mf;
printf('The total enthalpy: %3.1f kJ',H_tot);
printf('\n');
U=H-(P*100*V);
U_tot=U*mf;
printf('The internal energy: %3.1f kJ',U_tot);
printf('\n');
W=P*100*V;
W_tot=W*mf;
printf('The external work of evaporation: %3.1f kJ',W_tot);
printf('\n');
