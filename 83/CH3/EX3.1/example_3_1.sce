//Chapter 3
//Example 3.1
//page 87
//To calculate the capacitance to neutral of a single phase line
clear;clc;
r=0.328; //radius of the conductors
D=300; //distance between the conductors
h=750; //height of the conductors

//calculating capacitance neglecting the presence of ground
//using Eq (3.6)
Cn=(0.0242/(log10(D/r)));
printf("\nCapacitance to neutral /km of the given single phase line neglecting presence of the earth (using Eq 3.6) is = %0.5f uF/km\n\n",Cn);

//using Eq (3.7)
Cn=(0.0242)/log10((D/(2*r))+((D^2)/(4*r^2)-1)^0.5);
printf("Capacitance to neutral /km of the given single phase line neglecting presence of the earth (using Eq 3.7) is = %0.5f uF/km\n\n",Cn);

//Consudering the effect of earth and neglecting the non uniformity of the charge
Cn=(0.0242)/log10(D/(r*(1+((D^2)/(4*h^2)))^0.5));
printf("Capacitance to neutral /km of the given single phase line considering the presence of the earth and neglecting non uniformity of charge distribution (using Eq 3.26b) is = %0.5f uF/km\n\n",Cn);

