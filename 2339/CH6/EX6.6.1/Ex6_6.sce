clc
clear

rc=14;          //Adiabatic Compression Ratio
ra=8;           //Adiabatic Expansion Ratio
G=1.4;
Z=rc/ra;        //Cutoff Ratio

//It is a diesel Cycle
Eff=100*(1-((1/(rc^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
