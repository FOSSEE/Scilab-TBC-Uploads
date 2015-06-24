//Transport Processes and Seperation Process Principles
//Chapter 5
//Example 5.5-2
//Principles of Unsteady State Heat Transfer
//given data
m=75/100;//percentage of moisture
H=335*1000;//latent heat of fusion
lemda=m*H;
a=0.0635;//meat slab thickness
Tf=270.4;
T1=244.3;
rho=1057;
h=17;
k=1.038;
t=(lemda*rho/(Tf-T1))*((a/(2*h))+((a*a)/(8*k)));
mprintf("the time taken is %f h",t/3600)
