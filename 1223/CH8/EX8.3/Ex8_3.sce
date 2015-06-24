clear;
clc;
//Example 8.3
Rcsnk=1;//degree celsius per watt
Rsamb=5;//degree celsius per watt
Tjmax=175;//maximum junction temperature
Toc=25;
Tamb=25;
Pr=20;//rated power W
Rdcase=(Tjmax-Toc)/Pr;
printf('\ndevice to case thermal resistance=%.2f °C/W\n',Rdcase)
P=(Tjmax-Tamb)/(Rdcase+Rcsnk+Rsamb);
printf('\nmaximum power dissipation=%.2f W\n',P)
