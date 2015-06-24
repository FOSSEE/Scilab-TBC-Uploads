clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 5.8
//Caption : Program To Find the Maximum Possible Work for Ideal Condition

//Given Values
//Saturated Steam
//At T=373.15K 
H1=2676;//[KJ/Kg] from Steam table(App F)
S1=7.3554;//[KJ/Kg/K] from steam table(App F)
//At T=273.15K  Liquid water
H2=0;
S2=0;

T_sigma=273.15;//[K]
T_r=473.15;//[K]

del_H=H2-H1;
del_S=S2-S1;
W_ideal=del_H-(T_sigma*del_S);//[KJ/Kg]
Q=approx(abs(W_ideal*(T_r/(T_sigma-T_r))),1);//[KJ]
disp('KJ',Q,'Maximum Possible Work')

//End