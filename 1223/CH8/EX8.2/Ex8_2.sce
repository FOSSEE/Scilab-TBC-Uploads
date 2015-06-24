clear;
clc;
//Example 8.1
//let thermal resistance parameters be R
Rdcase=1.75;//degree celsius per watt
Rcsnk=1;//degree celsius per watt
Rsamb=5;//degree celsius per watt
Rcamb=50;//degree celsius per watt
Tamb=30;//ambient temperature 
Tjmax=150;//maximum junction temperature
Tdev=150;//device temperature
//when no heat sink is used
P=(Tjmax-Tamb)/(Rdcase+Rcamb);
printf('\nmaximum power dissipation=%.2f W\n',P)
//when heat sink is used
P=(Tjmax-Tamb)/(Rdcase+Rcsnk+Rsamb);
printf('\nmaximum power dissipation=%.2f W\n',P)
