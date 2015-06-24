clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 9.3
//Caption : Program to Find the Temperature of the High Pressure steam 

//Given Values

x=0.25;
//For Superheated Methane
//By Perry and Green  by linear interpolation
H4=1140;//[KJ/Kg]  @ 300K and 60 Bar
H15=1188.9;//[KJ/Kg]  @ 295K and 1 Bar
//By interpolation based on lnP
T_sat=111.5;//[K]
H9=285.4;//[KJ/Kg]  Saturated Liquid
H12=769.9;//[KJ/Kg] Saturated Vapor
S12=9.521;//[KJ/Kg/K] Saturated vapor

T5=253.6;//[K]
H5=1009.8;//[KJ/Kg]  @ 60 Bar

//From Eqn(9.7)
z=((x*(H12-H5))+H4-H15)/(H9-H15);

H14=((H5-H4)/(1-z))+H15;//[KJ/Kg]
//Whence
T14=227.2;//[K]  @ 1Bar

H7=H5-((1-z)/(1-x)*(H14-H12));//[KJ/Kg]
T7=197.6;//[K]  @ 60Bar

//From Eqn(9.8)
z=approx((H4-H15)/(H9-H15),4);

H7=H4-((1-z)*(H15-H12));
T7=206.6;//[K]

disp('%',z*100,'Fraction of methane liquefied')
disp('K',T7,'Temperature of High Pressure steam entering the throttle valve')

//End