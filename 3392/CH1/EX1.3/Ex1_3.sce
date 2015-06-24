clc
// initialization of variables
clear
D=25 // kN
L=60 // kN
W=30 //kN
Y=250 // M Pa
safety=5/3 // AISC, 1989
// calculations
Q=(D+L+W)*10^3 // converted to N
A=safety*Q/Y
r=sqrt(A/%pi)+0.5 // additional 0.5 mm is for extra safety
d=2*r // diameter
// results
printf('Part (a) \n ')
printf('A rod of %.d mm in diameter, with a cross sectional area of %.d mm^2, is adequate',d,%pi*d^2/4)
// The diameter is correct as given in the textbook. Area doesn't match due to rounding off error and partly because it's a design problem.
