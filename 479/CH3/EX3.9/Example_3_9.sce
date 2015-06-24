//Chemical Engineering Thermodynamics
//Chapter 3
//First Law of Thermodynamics

//Example 3.9
clear;
clc;

//To calculate the mass of steam required
//Given
m2 = 100;//mass of water to be heated
//From diagram, 
//m3 = m1+m2;..(a)
//Hs = H1;..(b) since throttling is a constant enthalpy process
//m3*H3-(m1*H1+m2*H2)=0;..(c) since delH=0

//From steam tables, 
Hs = 681.7//enthalpy of steam at 200 deg cel bleeded at the rate of 5Kgf/(cm^2) in Kcal/Kg
H2 = 5.03;//enthalpy of liquid water at 5 deg cel
H3 = 64.98;//enthalpy of liquid water at 65 deg cel
//from equn (a),(b)&(c);(page no 80)
m1 = ((H3-H2)/(Hs-H3))*m2;//mass of steam required in Kg  (page no 80)
mprintf('The mass of steam required to heat 100 Kg of water is %f Kg',m1);
//end 