clc
clear

//input
mmf=1800; // magneto motive force in amperes
l1=0.8; // length of iron in meters
l2=0.002; //length of air gap in meters
a=9*(10^-4); // area of the air gap in square meters
ui=2000; // relative permeability of iron
ua=1; // relative permeability of air
u0=1.257*(10^-6); // absolute permeability of free space

//calculations
b=(mmf*u0)/((l1/ui)+(l2/ua)); // flux density in tesla
e=(b^2)/(2*u0*ui); //energy stored in joules/cubic meter
v=l1*a; // volume of the iron in cubic meters
E=v*e; // total energy stored in the iron in joules

// output
mprintf('flux density is %3.10f T \n energy stored is %3.10f J/cubic m \n volume of the iron is %3.10f cubic m \n total energy stored in the iron is %3.10f J',b,e,v,E)
