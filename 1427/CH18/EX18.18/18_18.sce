//ques-18.18
//Calculating entropy change and free energy change of the reaction
clc
T1=300; T2=330;//temperature (in K)
G1=-16;//free energy change (in kcal)
H=-10;//enthalpy change (in kcal)
S=(H-G1)/T1;//entropy change (in kcal/K)
G2=H-T2*S;//free energy change (in kcal)
printf("The entropy change is %d cal/K and free energy change at 330K is %.1f kcal.",S*1000,G2);
