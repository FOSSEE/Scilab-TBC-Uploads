clc
clear

P1=1;       //in bar
T1=20+273;      //in K
P2=39;      //in bar
P3=P2;
T3=1100+273;        //in K
G=1.4;

//For reversible Adiabatic Process 1-2
T2=T1*((P2/P1)^((G-1)/G));
r=(P2/P1)^(1/G);

Z=T3/T2;

Eff=100*(1-((1/(r^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency: %2.2f Percent',Eff);
printf('\n');
