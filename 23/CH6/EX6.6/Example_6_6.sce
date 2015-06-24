clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 6.6
//Caption : Program to Find the State of Steam at the Exit Nozzle

//Given values
P1=1000;//[KPa]
T=533.15;//[K]
P2=200;//[KPa]
H1=2965.2;//[KJ/kg]  from Steam tables
S1=6.9680;//[KJ/Kg/K] From steam tables
S2=S1;
S_l=1.5301;//[KJ/Kg/K]  Entropy Of Saturated Liquid @ 200KPa
S_v=7.1268;//[KJ/Kg/K]  Entropy Of Saturated vapor  @ 200KPa
H_l=504.7;//[KJ/Kg]     Enthalpy Of saturated liquid @ 200KPa
H_v=2706.7;//[KJ/Kg]    Enthalpy Of saturated vapor @ 200KPa


//Solution
//find x_v from the eqn S=(1-x_v)S_l+x_c*S_v
x_v=approx((S1-S_l)/(S_v-S_l),4);

//From Eqn(6.73a)
H2=((1-x_v)*H_l)+(x_v*H_v);
del_H=approx(H2-H1,0);//[KJ/Kg]

disp('%',x_v*100,'Percent vapor')
disp('%',(1-x_v)*100,'Percent Liquid')
disp('KJ/Kg',del_H,'Change In Enthalpy')

//End