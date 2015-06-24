clc;clear;
//Example 2.16
//answers vary due to round off error

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
h=50;
m=5000;
Wout=1862;
ngen=0.95;//efficiency of turbine

//calculation
X=g*h/1000;// X stands for the differnce b/w change in mechanical energy per unit mass
R=m*X;//rate at which mech. energy is supplied to turbine in kW
nov=Wout/R;//overall efficiency i.e turbine and generator
disp(nov,'overall efficiency is');
ntu=nov/ngen;//efficiency of turbine
disp(ntu,'efficiency of turbine is');
Wsh=ntu*R;//shaft output work
disp(Wsh,'shaft power output in kW')
