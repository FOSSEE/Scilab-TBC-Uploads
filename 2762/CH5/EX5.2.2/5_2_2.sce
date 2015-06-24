//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.2-2
//Principles of Unsteady State Heat Transfer
//given data
//si units
//nomenclature similar to previous question
r=25.4/1000;
x1=r/3;
h=11.36;
k=43.3;;
Cp=0.4606*1000;
rho=7849;
M=h/(Cp*rho*x1);
V=(4/3)*(%pi)*(r^3);
T0=699.9;
Tinf=394.3;
t=3600;//time
Q=Cp*V*rho*(T0-Tinf)*(1-((%e)^(-M*t)));
mprintf("heat removed= %f J",Q)
