//Exa 6.1
clc;
clear;
close;
format('v',7);

//Given Data :
m=2;//Kg
p=8;//bar
H=5535;//KJ
h=H/m;//KJ/Kg
hg=2767.5;//KJ/Kg
disp(h,"Specific Enthalpy in KJ/Kg : ");
disp(hg,"Given Enthalpy in KJ/Kg : ");
disp("Given enthalpy = specific enthalpy. System is dry saturated.");
m=1;//Kg
p=2550*10^3/10^5;//bar
v=0.2742;//m^3/Kg
disp(v,"Specific volume in m^3/Kg : ");
vg=0.078352;//m^3
disp(vg,"Given specific volume in m^3/Kg : ");
Ts=225+273;//K
disp("Since v>vg. System is super heated.");
Tsup=v/vg*Ts;//K
disp(Tsup-273,"Temperature of super heated steam in degree C : ");
m=1;//Kg
p=60;//bar
h=2470.73;//KJ/Kg
disp(h,"Enthalpy in KJ/Kg : ");
hg=2475;//KJ/Kg
disp(hg,"Given enthalpy in KJ/Kg : ");
disp("Since h>hg. System is in vapour state.");
//let x be the dryness fraction
//h=hf+x*hg
hf=1213.69;//KJ/Kg
hfg=1517.3;//KJ/Kg
x=(h-hf)/hfg;
disp(x,"Dryness fraction : ");
//Steam table is used to get some data.
