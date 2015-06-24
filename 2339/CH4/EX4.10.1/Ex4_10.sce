clc
clear

//Conditions at 4 bar
P1=4;               //in bars
Hf=604.7;           //in kJ/kg
Hfg=2133.8;         //in kJ/kg
Vg=0.463;           //in m^3/kg
x1=0.9;
H1=Hf+(x1*Hfg);
V1=x1*Vg;

//Now at 12 bar pressure
P2=12;              //in bars
V2=(P1*V1)/P2;
Vg=0.163;           //in m^3/kg
printf('At 12 bar, V2: %3.3f kJ/kg',V2);
printf('\n');
printf('As Vg>V2, steam is wet');
printf('\n');
x2=V2/Vg;
printf('The dryness fraction at 12 bars: %3.2f ',x2);
printf('\n');

Hf=798.6;           //in kJ/kg
Hfg=1986.2;         //in kJ/kg
H2=Hf+(x2*Hfg);
printf('The Final enthalpy of steam: %3.1f kJ/kg',H2);
printf('\n');
