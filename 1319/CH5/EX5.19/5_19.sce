// To determine the load for max efficiency at two power factors

clc;
clear;

P=100*(10^3); // Power Input

E1=1000;
E2=10000;

Pil=1200;

I2=P/E2; // Full load current on the HV side

Isc=6; // Current for 500W copper loss in HV winding
Psc=500; // Copper Loss for 6A in HV winding

Pc=((I2/Isc)^2)*Psc; // Copper loss at full load.

Pmax=sqrt(Pil/Pc)*P; // Is a factor of square root of the ratio of Iron loss and Copper loss at full load.

deff('x=eff(y,z)','x=(P*y*z)*100/((P*y*z)+Pil+(Pc*(z^2)))')// Function to find the eifficiency for a given power factor(y) and load(z).

printf('a) The Efficiency at various loads for unity power factor are as follows. \n')
printf('i) At 25 percent load = %f percent \n',eff(1,0.25))
printf('ii) At 50 percent load = %g percent \n',eff(1,0.5))
printf('iii) At 100 percent load = %g percent \n',eff(1,1))

printf('\n b) The Efficiency at various loads for 0.8 power factor are as follows. \n')
printf('i) At 25 percent load = %g percent \n',eff(0.8,0.25))
printf('ii) At 50 percent load = %g percent \n',eff(0.8,0.5))
printf('iii) At 100 percent load = %g percent \n \n',eff(0.8,1))

printf('The Load at which efficiency is maximum = %g kVA \n',(Pmax/1000))

