clc
clear

//At 15 bar condition
Tsat=198.3+273;         //in K
m=7;                    //in kg
Hg=2792.2;              //in kJ/kg
Tsup=300+273;           //in K
Cps=2.1;                //in kJ/kg K
H1=Hg+(Cps*(Tsup-Tsat));
Cpw=4.187;              //in kJ/kg K
H2=Cpw*50;
Q=m*(H1-H2);
printf('The total amount of heat required: %3.1f kJ',Q);
printf('\n');
Sg=6.445;               //in kJ/kg K
S2=Sg+(Cps*log(Tsup/Tsat));
Sf=0.704;               //in kJ/kg K
S1=Sf;
S=m*(S2-S1);
printf('The change in Entropy: %3.2f kJ/K',S);
printf('\n');
