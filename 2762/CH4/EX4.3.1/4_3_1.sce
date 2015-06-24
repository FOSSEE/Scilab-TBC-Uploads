//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.3-2
//Principles of Steady State Heat Transfer
//given data
//si units
//nomenclature of unmentioned specifications similar to previous example
ka=0.151;//thermal conductivity
kb=0.0433;
kc=0.762;
T1=255.4;//temperatures
T4=297.1;
dx1=0.0127;//thickness
dx2=0.1016;
dx3=0.0762;
Ra=dx1/(ka);//per unit area calculation
Rb=dx2/(kb);
Rc=dx3/kc;
q=(T1-T4)/(Ra+Rb);
T2=T1-(q*Ra);
mprintf("the intermediate wall temp is %f K",T2)
