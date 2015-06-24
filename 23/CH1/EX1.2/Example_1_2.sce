clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 1.2
//Caption : Program To Find Gauge Pressure and absolute Pressure

//Given values

d=0.01;//Diameter(m)
m=6.14;//Mass(Kg)
g=9.82;//Acceleration of gravity
Pb=748;//Barometric Pressure(Torr)

//Solution

F=approx(m*g,3);//Force(N)
A=(%pi/4)*d*d;//Area(m^2)
Pg=approx(F/A,-2);//Gauge Pressure(N/m^2)
Pa=approx(Pg+(Pb*0.013332*(10^4)),-2);//Absolute Pressure(Pa)
disp('N',F,'Force ');
disp('(X 10^4) N/m^2',Pg/10^4,'Gauge Pressure ');
disp('KPa',Pa/1000,'Absolute Pressure');

//End