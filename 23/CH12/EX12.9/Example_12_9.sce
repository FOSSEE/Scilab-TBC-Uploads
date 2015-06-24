clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.9
//Caption : Program to Calculate the Heat Transformed per Kg of Solution formed 

T=294.15;//[K]
m_NaOH_soln=1;//[kg]
m_NaOH_solid=0.45*m_NaOH_soln;//[Kg]
m_H2O=0.55*m_NaOH_soln;//[Kg]

//From Steam Tables
H_NaOH_soln=216;//[kJ/Kg]
H_NaOH_solid=1113;//[kJ/Kg]
H_H2O=88;//[kJ/Kg]

dH=m_NaOH_soln*H_NaOH_soln-(m_NaOH_solid*H_NaOH_solid)-(m_H2O*H_H2O);
Q=dH;

disp('kW or kJ/kg',Q,'Heat Transferred per Kg of NaOH Soln')

//End