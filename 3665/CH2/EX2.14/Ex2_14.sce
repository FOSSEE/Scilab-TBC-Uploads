clc//
//
//

//Variable declaration
r=0.1249*10^-9;     //radius(m)
pf=0.68;      //packing factor

//Calculation
a=4*r/sqrt(3);    //lattice constant(m)
v=a^3;     //volume of unit cell(m^3)
Fv=(1-pf)*v;     //free volume per unit cell(m^3)

//Result
printf("\n free volume per unit cell is %0.4f *10^-30 m^3",Fv*10^30)
printf("\n answer varies due to rounding off errors")
