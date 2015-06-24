clc
clear

//Condition at pressure 15 bars
P=15;       //in bars
Hf=844.9;   // in kJ/kg
Hfg=1947.3; //in kJ/kg
Vg=0.132;   //in m^3/kg
x=0.9;      //Dryness fraction

W=P*100*x*Vg;
printf('External Work Done: %3.2f kJ/kg',W);
printf('\n');
H=Hf+(x*Hfg);
U=H-W;
printf('Internal Energy: %3.1f kJ/kg',U);
printf('\n');
