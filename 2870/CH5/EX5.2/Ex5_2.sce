clc;clear;
//Example 5.2

//given data
Dtank=3*12;//in inches
Djet=0.5;
h0=2;
h1=4;

//constants used 
g=32.2;//in ft/s^2

//calculations
//min - mout = dmCV/dt
//mout = p*(2*g*h*Ajet)^2
//mCV = p*Atank*h
//from these we get dt = Dtank^2/Djet^2 * (dh/(2*g*h)^2)
t=integrate('Dtank^2/Djet^2*(1/sqrt(2*g*h))','h',h0,h1);
t=(t/60);//in min
disp(t,'time taken to drop to 2ft in min')
