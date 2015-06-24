//Part A Chapter 7 Example 3
clc;
clear;
close;
m=5;//kg
cp_super_heat=2.1;//kJ/kgK
cp_water=4.18;//kJ/kgK
Tsuper_heat=300+273.15;//K
Tsat=212.42;//degreeC(at 2 MPa)
Tsat=Tsat+273.15;//K
hfg=1890.7;//kJ/kg(For 2 MPa & Tsat)\
S=cp_water*log(Tsat/273.15)+hfg/Tsat+cp_super_heat*log(Tsuper_heat/Tsat);//kJ/kgK
S_5kg=S*5;//kJ/K
disp("Entropy of 5 kg steam = "+string(S_5kg)+" kJ/K");
