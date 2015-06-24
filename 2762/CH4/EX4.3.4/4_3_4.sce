//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.3-4
//Principles of Steady State Heat Transfer
//given data
//nomenclature of unmentioned specifications similar to previous example
I=200;//current in A
R=0.126;// resistance in ohms
P=I*I*R;//Power in watts
Tw=422.1;//watt temp in K
L=0.91;//length of wire
r=0.001268;//radius of wire
qdot=P/(%pi*L*r*r);
k=22.5;
T0=(qdot*r*r/(4*k))+Tw
mprintf("centre temperature= %f K",T0)
