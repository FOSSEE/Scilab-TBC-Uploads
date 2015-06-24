clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 1.3
//Caption : Program To Find Pressure in a Manometer

//Given Values

T=300.15;//Temp=300.15K(27`C)
h=60.5*(10^-2);//Height=60.5cm
rho=13530;//Density(Kg/m^3)
g=9.784;//Acceleration of gravity(m/s^2)

//Solution

P=approx(h*rho*g,0);
disp('KPa',P/1000,'Pressure in KPa');
disp('bar',P/100000,'Pressure in bar');

//End