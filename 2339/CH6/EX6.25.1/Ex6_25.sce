clc
clear

r=15;       //Compression Ratio
P1=100;     //in kPa
T1=27+273;
Cp=1.006;
Cv=0.717;
G=1.4;

//Cut off takes place at 12% of Working Stroke
T2=T1*(r^(G-1));
printf('T2= %2.1f K',T2);
printf('\n');

P2=P1*(r^G);
printf('P2= %2.1f kPa',P2);
printf('\n');

Z=(0.12*(r-1))+1;
Eff=100*(1-((1/(r^(G-1)))*(1/G)*((Z^G)-1)/(Z-1)));
printf('Efficiency is %2.1f Percent',Eff);
printf('\n');
