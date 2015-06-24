clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 5.6
//Caption : Program to Find the Feasibility of a Process

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
Q_r=-2000;//[KJ]

del_H=H2-H1;
Q=del_H;
Q_sigma=Q-Q_r;

del_S=S2-S1;
//For Heat Reservoir at 473.15K
del_St_T_r=(-Q_r/T_r);//[KJ/K]
//For Heat reservoir provided by cooling water at 273.15K
del_St_T_sigma=-Q_sigma/T_sigma;
del_S_total=del_S+del_St_T_r+del_St_T_sigma;
disp('Since del_S_total<0 Process not feasible')

//Actual
Q_r=approx((T_r/(T_r-T_sigma))*(del_H-(T_sigma*del_S)),1);
disp('KJ/Kg',Q_r,'Actual Heat transfer')

//End