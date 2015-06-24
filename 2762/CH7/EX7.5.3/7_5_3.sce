//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 7.5-3
//Principles of Unsteady state and convective mass transfer
//given data
//si units
k=35;//rate constant first order
t=0.01;
sol=2.961/(10^7);
P=101.32*1000;
Dab=1.5/(10^9)
ca0=sol*P;//initial concn
Q=ca0*sqrt(Dab/k)*(k*t+0.5)*erf(sqrt(k*t)+sqrt(k*t/(3.14*(2.71828183^(k*t)))));//rate of absorption
mprintf("the rate of absorption is %f kg mol CO2/m2",Q)
