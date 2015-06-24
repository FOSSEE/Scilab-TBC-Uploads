clc
clear

Ms=3;               //in kg
Tf=30;              //in C
P=8;                //in bar
Tsup=210+273;       //in K
Cps=2.1;            //in kJ/kg K
Cpw=4.186;          //in kJ/kg K

H1=Cpw*Tf;

//At 8 bar pressure
Tsat=170.4+273;         //in K
Hg=2769.1;              //in kJ/kg
H2=Hg+(Cps*(Tsup-Tsat));
Q=Ms*(H2-H1);
printf('Amount of heat required: %2.2f kJ',Q);
printf('\n');
