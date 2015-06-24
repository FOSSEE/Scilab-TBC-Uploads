clc
clear

//At 20 degree Celcius
Cpw=4.187;              //in kJ/kg
Tw=20;
H1=Cpw*Tw;

//At 8 bar condition
m=4;                //mass in kg
Cps=2.1;            //in kJ/kg
Tsat=170.4+273;     //in K
Hg=2769.1;          //in kJ/kg
Tsup=200+273;       //in K
H2=Hg+(Cps*(Tsup-Tsat));
Q=m*(H2-H1);
printf('Heat to be added: %3.1f kJ',Q);
printf('\n');
