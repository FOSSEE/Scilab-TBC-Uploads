clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 7.10
//Caption : Program to Find Work,Temperature Change and Entropy Change in Pump

//Given Values
T1=318.15;//[K]
P1=10;//[KPa]
P2=8600;//[KPa]
eta=0.75;//Efficiency

//Properties of saturated liquid water @ 318.15K
V=1010;//[cm^3/Kg]
V=1010*10^-6;//[m^3/Kg]
Beta=425*10^-6;//[K^-1]
Cp=4.178;//[KJ/Kg/K]

//From Eqn(7.24)
Ws=V*(P2-P1);//[KPa m^3/Kg]
del_H=Ws;
//From Eqn(7.17)
del_H=del_H/eta;
Ws=approx(del_H,2);

//From Eqn(7.25)
del_T=approx((del_H-(V*(1-(Beta*T1))*(P2-P1)))/Cp,2);

//From Eqn(7.26) 
T2=T1+del_T;
del_S=approx(Cp*log(T2/T1)-(Beta*V*(P2-P1)),3);

disp('KJ/Kg',Ws,'Work Done')
disp('K',del_T,'Change in Temperature')
disp('KJ/Kg/K',del_S,'Change in Entropy')

//End