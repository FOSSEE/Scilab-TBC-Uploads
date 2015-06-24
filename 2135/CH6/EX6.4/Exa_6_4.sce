//Exa 6.4
clc;
clear;
close;
format('v',8);

//Given Data :
m=1;//Kg
p=8;//bar
Tsup=280;//degree C
h1=2950.4;//KJ/Kg(at 250 degree C)
h2=3057.3;//KJ/Kg(at 300 degree C)
Tsup1=250;//degree C
Tsup2=300;//degree C
hsup=h1+(h2-h1)/(Tsup2-Tsup1)*(Tsup-Tsup1);//KJ/Kg
disp(hsup,"Specific enthalpy in KJ/Kg : ");
v1=0.293;//m^3/Kg(at 250 degree C)
v2=0.324;//m^3/Kg(at 300 degree C)
vsup=v1+(v2-v1)/(Tsup2-Tsup1)*(Tsup-Tsup1);//m^3/Kg
disp(vsup,"Specific volume in m^3/Kg : ");
S1=7.04;//KJ/KgK(at 250 degree C)
S2=7.235;//KJ/KgK(at 300 degree C)
Ssup=S1+(S2-S1)/(Tsup2-Tsup1)*(Tsup-Tsup1)
disp(Ssup,"Specific enthalpy in KJ/KgK : ");
//Steam table is used to get some data.
