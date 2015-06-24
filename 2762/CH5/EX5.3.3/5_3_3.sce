//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.3-3
//Principles of Unsteady State Heat Transfer
//given data
//si units
//nomenclature similar to previous questions;
//center is at x=0
x=0;
x1=0.0681/2;//radius of can
n=x/x1;
k=0.830;
h=4540;
m=(k/(h*x1));
alpha=2.007e-7;
t=0.75*3600;
X=(alpha*t)/(x1*x1);
Y=0.13;//heislers figure or graph
//Y=(T1-T)/(T1-T0)
T1=115.6;
T0=29.4;
T=T1-(Y*(T1-T0));
mprintf("temp at the center of the can= %f deg C",T)
