clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction

//Example 1.1
//Caption : Program To find the Astronaut's Mass and Weight on moon.

//Given values

F=730;//Force(N)
g_texas=9.792;//Acceleration of gravity in Houston,Texas(m/s^2).
g_moon=1.67;//Acceleration of gravity at moon(m/s^2).

//Solution

m=approx(F/g_texas,2);//Mass of Astronaut(Kg)
F_moon=approx(m*g_moon,2);//Force on Moon(N)
disp('Kg',m,'Mass of Astronaut');
disp('N',F_moon,'Force on Moon');

//End