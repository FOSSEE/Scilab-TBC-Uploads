//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.3-2
//Principles of Steady State Heat Transfer
//given data
//si units
//nomenclature of unmentioned specifications similar to previous example
ka=21.63;
kb=0.2423;
T1=811;
T3=310.8;
r1=0.0254/2;
r2=0.0508/2;
r3=0.0508;
L=0.305;
A1=2*3.14*L*r1;//area of inner surface of cylinder
A2=2*3.14*L*r2;
A3=2*3.14*L*r3;
A1m=(A2-A1)/(log(A2/A1)/log(2.71828183));//log mean of inner surface area and outer surface area
A2m=(A3-A2)/(log(A3/A2)/log(2.71828183))
Ra=(r2-r1)/(ka*A1m);
Rb=(r3-r2)/(kb*A2m);
q=(T1-T3)/(Ra+Rb);
T2=T1-(q*Ra);
mprintf("the intermediate wall temp is %f K",T2)
