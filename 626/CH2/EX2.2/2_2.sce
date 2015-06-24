clear;
clc;
close;
disp("Example2.2")
t1=288; //inlet temperture in Kelvin
p1=100*10^3; //inlet pressure in Pa
p2=1*10^6 //exit pressure in Pa
gma=1.4; //gamma.
rg=287; //gas constant in J/kg.K
t2=t1*(p2/p1)^((gma-1)/gma);   //exit temperature 
disp(t2,"Exit temperature in K:")
//first method to find exit density:
//application of perfect gas law at exit
rho=p2/(rg*t2); //rho= exit density.
disp(rho,"exit density at by method 1 in kg/m^3:")
//method 2: using isentropic relation between inlet and exit density.
rho1=p1/(rg*t1); //inlet density.
rho=rho1*(p2/p1)^(1/gma);
disp(rho,"exit density by method 2 in kg/m^3:")

                                                     