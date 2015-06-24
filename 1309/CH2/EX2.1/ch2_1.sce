clc;
clear;
printf("\t\t\tChapter2_example1\n\n\n");
//  determination of the heat flow through a composite wall
T3=-10; // temperature of inside wall in degree Fahrenheit
T0=70; // temperature of outside wall in degree Fahrenheit
dT=T0-T3; // overall temperature difference
// values of thermal conductivity in BTU/(hr.ft.degree Rankine) from appendix table B3
k1=0.38; // brick masonry
k2=0.02; // glass fibre
k3=0.063; // plywood
dx1=4/12; // thickness of brick layer in ft
dx2=3.5/12; // thickness of glass fibre layer in ft
dx3=0.5/12; // thickness of plywood layer in ft
A=1; // cross sectional area taken as 1 ft^2
R1=dx1/(k1*A); // resistance of brick layer in (hr.degree Rankine)/BTU
R2=dx2/(k2*A); // resistance of glass fibre layer in (hr.degree Rankine)/BTU
R3=dx3/(k3*A); // resistance of plywood layer in (hr.degree Rankine)/BTU
printf("\nResistance of brick layer is %.3f (hr.degree Rankine)/BTU",R1);
printf("\nResistance of glass fibre layer is %.1f (hr.degree Rankine)/BTU",R2);
printf("\nResistance of plywood layer is %.3f (hr.degree Rankine)/BTU",R3);
qx=(T0-T3)/(R1+R2+R3); 
printf("\nHeat transfer through the composite wall is %.2f BTU/hr",qx);
