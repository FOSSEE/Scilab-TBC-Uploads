clc
clear

//Conditions at 10 bar
P=10;                   //in bar
Tsat=179.9+273;         //in K
Hf=762.8;               //in kJ/kg
Hfg=2015.3;             //in kJ/kg
Hg=2778.1;              //in kJ/kg
Vg=0.194;               //in m^3/kg
Sf=2.139;               //in kJ/kg K
Sg=6.623;               //in kJ/kg K
Sfg=4.448;              //in kJ/kg K
x=0.91;                 //Dryness Fraction
m=3;                    //in kg

//Now for wet steam
H=Hf+(x*Hfg);
H_final=m*H;
printf('The total Enthalpy: %3.1f kJ',H_final);
printf('\n');
V=x*Vg;
U=H-(P*100*V);
U_final=m*U;
printf('The Internal Energy: %3.1f kJ',U_final);
printf('\n');
S=Sf+(x*Sfg);
S_final=m*S;
printf('The Entropy: %3.3f kJ/K',S_final);
printf('\n \n');

//Now Case 2
printf('Now for Case 2 \n');
Tsat=179.9+273;         //in K
Tsup=200+273;           //in K
Cp=2.1;                 //in kJ/kg K
H=Hg+(Cp*(Tsup-Tsat));
H_final=m*H;
printf('The Enthalpy: %3.1f kJ',H_final);
printf('\n');
Vsup=(Tsup*Vg)/Tsat;
U=H-(P*100*Vsup);
U_final=m*U;
printf('The change in internal energy: %3.1f kJ',U_final);
printf('\n');
S=Sg+(Cp*log(Tsup/Tsat));
S_final=m*S;
printf('The Entropy: %3.1f kJ/K',S_final);
printf('\n');

//Now Case 3
printf('\n Now for case 3 \n');
H=Hg;
H_final=m*H;            //in  kJ
printf('The total enthalpy: %3.1f kJ',H_final);
printf('\n');
V=Vg;
U=H-(P*100*V);
U_final=m*U;
printf('The change in internal energy: %3.1f kJ',U_final);
printf('\n');
S=Sg;
S_final=m*S;
printf('The total entropy: %3.3f kJ/kg',S_final);
printf('\n');
