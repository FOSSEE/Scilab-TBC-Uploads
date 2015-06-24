clc
clear

//Conditions at 10 bar pressure
P=10;               //in bar
Tsat=179.9+273;     //in K
Tsup=350+273;
x=0.9;              //Dryness Fraction
Hf=762.8;           //in kJ/kg
Hfg=2015.3;         //in kJ/kg
Hg=2778.1;          //in kJ/kg
Vg=0.194;           //in m^3/kg
Cps=2.1;            //in kJ/kg K
Ha=Hg+(Cps*(Tsup-Tsat));
Hb=Hf+(x*Hfg);
H_mix=(Ha+Hb)/2;
Tsupe=((H_mix-Hg)/Cps)+Tsat;
Tsuper=Tsupe-273;
printf('Temperature of superheated steam: %3.0f Celcius',Tsuper);
printf('\n');
