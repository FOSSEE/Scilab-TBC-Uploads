//ques6
//isothermal steady state processes
clear
clc
//from table A.2
P1=8;//pressure at state 1 in MPa
P2=0.5;//pressure at state 2 in MPa
T1=150;//Temperature at state 1 in K
Pr1=P1/3.39;//Reduced pressure at state 1
Pr2=P2/3.39;//Reduced pressure at state 2
Tr1=T1/126.2;//Reduced temperature
T2=125;//temperature at state 2
//from compressibility chart h1*-h1=2.1*R*Tc
//from zero pressure specific heat data h1*-h2*=Cp*(T1a-T2a)
//h2*-h2=0.5*R*Tc
//this gives dh=h1-h2=-2.1*R*Tc+Cp*(T1a-T2a)+0.15*R*Tc
R=0.2968;//gas constant for given substance
Tc=126.2;//K, Constant temperature
Cp=1.0416;//heat enthalpy at constant pressure in kJ/kg
dh=(2.35)*R*Tc+Cp*(T2-T1);//
printf('Enthalpy change = %.2f kJ/kg \n',dh);
//change in entropy 
//ds= -(s2*-s2)+(s2*-s1*)+(s1*-s1)
//s1*-s1=1.6*R
//s2*-s2=0.1*R
//s2*-s1*=Cp*log(T2/T1)-R*log(P2/P1)
//so
ds=1.6*R-0.1*R+Cp*log(T2/T1)-R*log(P2/P1);
printf(' Entropy Change = %.4f kJ/kg.K ',ds);