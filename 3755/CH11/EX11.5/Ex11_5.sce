clear
//
//
//

//Variable declaration
H=1600;      //magnetizing force(amp/m)
phi=4*10^-4;     //flux(weber)
A=4*10^-4;     //area(m^2)

//Calculation
B=phi/A;
mew=B/H;      //permeability of rod(weber/amp.m)

//Result
printf("\n permeability of rod is %0.3f *10^-3 weber/amp.m",mew*10^3)
