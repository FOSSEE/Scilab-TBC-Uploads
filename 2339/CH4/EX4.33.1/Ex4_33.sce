clc
clear

//At 25 bar pressure
P=25;                   //Pressure in bar
x=0.8;                  //Dryness fraction
Hf=962.1;               //in kJ/kg
Hfg=1841;               //in kJ/kg
Vg=0.0801;              //in m^3/kg
H=Hf+(x*Hfg);
printf('Enthalpy: %2.1f kJ/kg',H);
printf('\n');

U=H-(P*100*x*Vg);
printf('Internal Energy: %2.1f kJ/kg',U);
printf('\n');
