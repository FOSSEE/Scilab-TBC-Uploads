clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.5
//Caption : Program to Calculate the Heat transfer rate in th evaporator

M_LiCl=42.39;
M_H2O=18.015;
T1=298.15;//[K]
T2=405.15;//[K]
//Step a
m_LiCl=0.15*2;
m_H2O=2-m_LiCl;
n_LiCl=(m_LiCl*1000)/M_LiCl
n_H2O=(m_H2O*1000)/M_H2O;
dH_LiCl=-33800;
dH_a=-n_LiCl*dH_LiCl//[J/s]

//Step b
m_LiCl=0.15*2;
m_H2O=0.45;
n_LiCl=(m_LiCl*1000)/M_LiCl;
n_H2O=(m_H2O*1000)/M_H2O;
dH_LiCl=-23260;
dH_b=n_LiCl*dH_LiCl//[J/s]

//Step c
m_LiCl=0.75;
Cp=2.72;
dT=T2-T1;
dH_c=m_LiCl*Cp*dT*1000//[J/s]

//step d
m_H2O=2-m_LiCl;
dH_T2=2740.3;//[KJ/s/mol] form Steam Tables
dH_T1=104.8;//[KJ/s/mol]  from Steam Tables
dH_d=m_H2O*(dH_T2-dH_T1)*1000//[J/s]

dH=approx((dH_a+dH_b+dH_c+dH_d)/1000,1);

disp('kW or KJ/s',dH,'The required Heat Transfer rate is ')

//End