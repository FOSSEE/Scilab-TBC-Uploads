clc
clear
//DATA GIVEN
m=0.44;                         //mass of air in kg
T1=180+273;                     //initial temperature of air in K
T2=15+273;                      //final temperature of air in K
W12=52.5;                       //work done during the process in kJ
//V2/V1=3
Vr=3;                           //volume ratio, Vr=V2/V1

//Law of adiabatic expansion, pV^g=C

//In an adiabatic process
//(T2/T1)=(V1/V2)^(g-1);
g=1+[(log(T2/T1)/log(1/Vr))];              //gamma for air, g=Cp/Cv

//W12=(p1*V1-p2*V2)/(n-1)=mR(T2-T1)/(g-1)
R=W12/m/(T1-T2)*(g-1);
//R=Cp-Cv

Cv=R/(g-1);
Cp=g*Cv;

printf(' (i) The value of Cv is: %1.3f kJ/kgK. \n',Cv);
printf(' (ii) The value of Cp is: %1.3f kJ/kgK. \n',Cp);

//NOTE:
//there is slight variation in answers of the book due to rounding off of the values 
