clc
clear

//Conditions at 8 bar
P=8;                //Pressure in bar
x=0.9;              //dryness fraction
Hf=721.1;           //in kJ/kg
Hfg=2048.0;         //in kJ/kg
Vg=0.240;           //in m^3/kg
H1=Hf+(x*Hfg);
V1=x*Vg;

//Enthalpy of superheated steam at 8 bar and 200 Celcius
Hg=2769.1;
Cps=2.1;
Tsup=200+273;           //in Celcius
Tsat=170.4+273;         //in Celcius
H2=Hg+(Cps*(Tsup-Tsat));
V2=(Vg*Tsup)/Tsat;
H=H2-H1;
printf('Heat supplied: %3.1f kJ/kg',H);
printf('\n');
W=P*100*(V2-V1);
printf('Work Done: %3.3f kJ/kg',W);
printf('\n');
//At 8 bar
Sf=2.046;           //in kJ/kg K
Sfg=4.617;          //in kJ/kg K
Sg=6.663;           //in kJ/kg K
S1=Sf+(x*Sfg);
S2=Sg+(Cps*(log(Tsup/Tsat)));
S=S2-S1;
printf('The Enthalpy change during process: %3.1f kJ/kg K',S);
printf('\n');
