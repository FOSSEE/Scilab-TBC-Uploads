//chapter-8 page 342 example 8.7
//==============================================================================
clc;
clear;

//For a reflex klystron
n=1;//mode value
Pi=0.04;//the dc input power in W
x=0.278;//ratio of V1 over V0 

//CALCULATION
X=x*3*(%pi)/4;
J1=0.3205;//bessel coefficient value [JI(X')]
ef=((2*X*J1)/((2*(%pi)*n)-((%pi)/2)))*100;//Efficiency of the reflex klystron in %
Pout=((ef/100)*Pi)/10^(-3);//Total power output in mW
p=20;//percentage of the power delivered by the electron beam dissipated in the cavity walls
Pd=Pout*(100-p)/100;//Power delivered to load in mW

//OUTPUT
mprintf('\nEfficiency of the reflex klystron is ef=%1.2f percentage\nTotal power output is Pout=%1.3f mW \nIf the 20 percentage of the power delivered by the electron beam is dissipated in the cavity walls then the Power delivered to load is Pd=%1.2f mW',ef,Pout,Pd);

//=========================END OF PROGRAM===============================

