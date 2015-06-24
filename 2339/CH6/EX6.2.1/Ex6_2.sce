clc
clear

T1=323;         //in K
T2=673;         //in K
G=1.4;

r_G=T2/T1;
r=(r_G)^(1/(G-1));
printf('Compression Ratio is %2.2f ',r);
printf('\n');

Eff=100*(1-(1/(r^(G-1))));
printf('Air Standard Efficiency is %2.0f Percent ',Eff);
printf('\n');
