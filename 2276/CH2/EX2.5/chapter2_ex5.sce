clc
clear

//input
l1=0.5; //length of iron bar in meters which is bent into horse shoe lifting magnet
a=1*(10^-3);// cross sectional area in cbuc meters
n=500; // number of turns wound
i=4; //cyrrent flowing in amperes
ui=1100; // relative permeability of iron 
ua=1; //relative permeability of air gap
l2=0.001; //length of the air gap
k=1.1; //leakage co-efficient
u0=1.257*(10^-6); //absolute permeability

//calculations
b=(n*i*u0)/(((k*l1)/ui)+((2*a)/ua)); //flux density in tesla
P=((b^2)*2*l2)/(2*u0*ua); //increase in stored energy due to movement of the load by magnet in joules
m=P/9.81; //mass lifted in kilo grams

//output
mprintf('fulx density is %3.10f T \n increase in stored energy is %3.2f J \n mass that can be lifted by the magnet is %3.2f Kg',b,P,m)
