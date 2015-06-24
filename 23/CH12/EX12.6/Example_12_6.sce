clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.6
//Caption : Program to Calculate Heat Transfer Rate in Single effect Evaporator

T0=298.15;//[K]
T=361.5;//[K]
mT=1.25;//[Kg/s]  10% NaOH
m_steam=1;//[Kg/s] at P=76 torr and 361.5K
m_50NaOH=mT-m_steam;//[Kg/s]  at 361.5K

//From Steam tables
//at 76 torr and 361.15K
H_steam=2666;//[KJ/kg]
//for 10% NaOH soln at 294.15K
H_10NaOH=79;//[KJ/Kg]
//for 50% NaOH soln at 361.15K
H_50NaOH=500;//[KJ/Kg]

dH=(m_steam*H_steam)+(m_50NaOH*H_50NaOH)-(mT*H_10NaOH);
Q=dH;
disp('kW or kJ/s',Q,'Heat Transfer rate')

//End