clc
clear

//At 7 bar and 300 Celcius
P=7;            //in bars
Cps=2.1;
Tsup=300+273;   //in K
Tsat=165+273;   //in K
Hg=2763.5;      //in kJ/kg
H1=Hg+(Cps*(Tsup-Tsat));

x2=0.9;          //Dryness Fraction
Hf=697.2;       //in kJ/kg
Hfg=2066.3;     //in kJ/kg
H2=Hf+(x2*Hfg);
m=(H1-Hg)/(Hg-H2);
printf('The mass flow rate of wet steam: %3.3f kg/kg',m);
printf('\n');
