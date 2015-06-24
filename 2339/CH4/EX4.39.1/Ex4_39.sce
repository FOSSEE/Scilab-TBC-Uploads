clc
clear

Ms=5;               //in kg
P=5;                //in bar
Tsup=250+273;       //in K
Cps=2.1;            //in kJ/kg K
Tf=30;              //in C
Cpw=4.187;          //in kJ/kg K
H1=Cpw*Tf;

//At 5 bar pressure
Tsat=151.9+273;         //in K
Hg=2748.7;          //in kJ/kg
H2=Hg+(Cps*(Tsup-Tsat));
Q=Ms*(H2-H1);
printf('Amount of heat required: %2.2f kJ',Q);
printf('\n');
