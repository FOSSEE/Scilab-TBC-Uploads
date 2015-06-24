clc
clear

//Condition at 10 bar pressure
//Steam is wet

x=0.95;
P=10;       //in bars
Hf=762.8;       //in kJ/kg
Hfg=2015.3;     //in kJ/kg
H=Hf+(x*Hfg);
printf('Enthalpy : %3.2f kJ/kg',H);
printf('\n');

//Now we calculate Work Done
Vg=0.194;       //in m^3/kg
W=P*100*x*Vg;
U=H-W;
printf('Internal energy: %3.0f kJ/kg',U);
printf('\n');
