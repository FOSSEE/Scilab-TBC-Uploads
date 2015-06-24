clc
clear

r=19;       //Compression Ratio
Re=9.1;     //Expansion Ratio
Z=r/Re;
G=1.4;
Eff=100*(1-((1/(r^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency: %2.2f Percent',Eff);
printf('\n');
