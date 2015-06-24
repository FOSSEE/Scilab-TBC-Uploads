clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 2.8
//Caption : Program to find Change in Enthalpy and Internal Energy

//Given values
m=1;//1kg of water
T=373.15;//Temp=373.15K(100`C)
P=101.325;//Pressure=101.325KPa
V2=1.673;//Final Volume[m^3]
V1=0.00104;//Initial Volume[m^3]
Sv_liqiud=0.00104;//Specific Volume of Liqiud
Sv_vapour=1.673;//Specific Volume of Vapour
del_H=2256.9;//Heat Added(KJ)

//Solution
Q=del_H;
del_V=V2-V1;
W=P*del_V;//KJ
del_U=approx(del_H-(P*del_V),1);
disp('KJ',del_H,'Change in Enthalpy');
disp('KJ',del_U,'Change in Internal energy');
//End