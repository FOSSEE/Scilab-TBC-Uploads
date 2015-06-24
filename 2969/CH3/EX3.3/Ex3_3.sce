clc
clear
//DATA GIVEN
m=0.3;                          //mass of nitrogen in kg
p1=0.1;                         //pressure in MPa
T1=40+273;                      //temperature before compression in K
p2=1;                           //pressure in MPa
T2=160+273;                     //temperature after compression in K
W=-30;                          //work done during the compression in kJ/kg
Cv=0.75                         //in kJ/kgK

//using First Law of Thermodynamics, Q=(u2-u1)+W
//(u2-u1)=m*Cv*(T2-T1)
Du=m*Cv*(T2-T1);
Q=Du+W;                         //heat flow in kJ/kg
//since Q is -ve, there is rejection of heat

printf('The heat REJECTED by air is: %1.0f kJ. \n',(-Q));
