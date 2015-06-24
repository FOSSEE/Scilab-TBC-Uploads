clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.12
//Caption : Program to Find density for ammonia

//Given Values
T=310;//Temp=310K(36.85`C)
M=17.02;

//Solution 

//(a)
//saturated liquid
Tc=405.7;//App B
Vc=0.07247;//App B
Zc=0.242;//App B
Vsat=approx(Vc*(Zc^((1-Tr)^0.2857)),5);//m^3kmol^-1
rho=approx(M/Vsat,2);
disp('(a)Saturated liquid')
disp('m^3/kmol',Vsat,'Volume is ')
disp('kmol/m^3',rho,'Density is ')

//(b)
//Liquid at 100bar
P=100;//Pressure=100bar
Pc=112.8;//App B
Pr=P/Pc;
rho_r=2.38;//From Graph
V=Vc/rho_r;
//but this Gives large error
rho_r1=2.34;
V_new=approx(V*rho_r1/rho_r,5);
//In exceptance with Experimental Value

rho=approx(M/V_new,2);
disp('(b)For Liquid at 100bar')
disp('m^3/kmol',V_new,'Volume is ')
disp('kmol/m^3',rho,'Density is ')

//End