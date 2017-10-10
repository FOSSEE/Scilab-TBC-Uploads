//ques-18.26
//Calculating free energy change at 298 K
clc
T=298;//temperature (in K)
S=-10.5;//entropy change (in cal/K)
U=-2500;//internal energy change (in cal/K)
R=1.987;//cal/mol/K
n=2-(2+1);//difference in moles of gases
//G=H-T*S
//H=U+n*R*T
G=U+n*R*T-T*S;//free energy change
printf("The free energy change is %.0f cal.",G);
