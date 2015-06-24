//example 12
//charging of rigid tank by system
clear
clc
disp('This process can be analyzed as a uniform-flow process since the properties of the steam entering the control volume remain constant during the entire process.')
disp('We take the tank as the system. This is a control volume since mass crosses the system boundary during the process.We observe that this is an unsteady-flow process since changes occur within the control volume')
m1=0 //since system is initially evacuated
disp('The properties of the steam at the inlet state are')
P1=1 //pressure in MPa
T1=300 //temp. in Celsius
h1=3051.6 //especific enthalpy in kJ/kg
P2=1 // pressure at final state in MPa
u2=h1 //final internal energy of the steam in kJ/kg
disp('From steam table,the temp. corresponding to final properties are')
T2=456.1//final temp. in Celsius
printf("\n The final temp. of the steam in the tank is = %.1f C. \n",T2);