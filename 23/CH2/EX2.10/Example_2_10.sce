clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 2.10
//Caption : Program to Find change in Internal Energy and Enthalpy

//Given values

//Initial values
T1=277;//Temp=277K
P1=10;//Pressure=10bar
V1=2.28;//molar Volume=2.28m^3/Kmol

//Final value
T2=333;//Temp=333K
P2=1;//Pressure=1atm

Cv=21;//KJ/Kmol/K
Cp=29.3;//KJ/Kmol/K

//Solution
//(a)-Cooled at const Vol to the final pressure
//(b)-Heated at const Pressure to final temperature
T_=T1*(1/10);//Intermediate temperature
del_Ta=T_-T1;
del_Tb=T2-T_;
del_Ua=Cv*del_Ta;//KJ/Kmol
del_Ha=del_Ua+(V1*(P2-P1)*(10^5)/(10^3));//KJ/Kmol
V2=(V1*P1*T2)/(P2*T1);//m^3/kmol
del_Hb=Cp*del_Tb;
del_Ub=del_Hb-(P2*(V2-V1)*(10^5)/(10^3));//KJ/Kmol

del_U=approx(del_Ua+del_Ub,0);
del_H=approx(del_Ha+del_Hb,0);
disp('KJ/Kmol',del_U,'Change In Internal Energy')
disp('KJ/Kmol',del_H,'Change In Enthalpy')

//End