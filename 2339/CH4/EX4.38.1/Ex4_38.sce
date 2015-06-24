clc
clear

//Case 1
P=10;               //in bar
Cps=2.1;            //in kJ/kg K
x=0.85;             //Dryness fraction
Hf=762.8;           //in kJ/kg
Hfg=2015.3;         //in kJ/kg
Vg=0.194;           //in m^3/kg
Hg=2778.1;          //in kJ/kg

H=Hf+(x*Hfg);
printf('Case 1: When x=0.85 \n \n');
printf('Enthalpy of steam: %2.2f kJ',H);
printf('\n');

U=H-(P*100*x*Vg);
printf('Internal Energy of steam: %2.2f kJ',U);
printf('\n');

//Case 2
H=Hg;               //in kJ/kg
printf('\n \nCase 2: When steam is dry and saturated \n \n');
printf('Enthalpy of steam: %2.2f kJ',H);
printf('\n');

U=H-(P*100*Vg);
printf('Internal Energy of steam: %2.2f kJ',U);
printf('\n');

//Case 3
Tsup=300+273;           //in K
Tsat=179.9+273;             //in K
H=Hg+(Cps*(Tsup-Tsat));
printf('\n \nCase 3: When steam is superheated to 300 C \n \n');
printf('Enthalpy of steam: %2.2f kJ',H);
printf('\n');

Vsup=(Tsup/Tsat)*Vg;
U=H-(P*100*Vsup);
printf('Internal Energy of steam: %2.2f kJ',U);
printf('\n');
