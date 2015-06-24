// Initilization of variables
b=20 // cm // width of the pate
d=30 // cm // depth of the plate
r=15 // cm // radius of the circular hole
h=20 // cm // distance between the centre of the circle & the x-axis
// Calculations
// (a) Location of the centroid of the composite area
A_1=b*d // cm^2 // area of the plate
y_1=d/2 // cm // y-coordinate of the centroid
A_2=(%pi*r^2)/4 // cm^2 // area of the circle removed (negative)
y_2=h // cm // y-coordinate of the centroid
y_c=((A_1*y_1)-(A_2*y_2))/(A_1-A_2) // cm // from the bottom edge
// (b) Moment of Inertia of the composite area about the centroidal x-axis
// Area (A_1) M.I of area A_1 about x-axis
I_x1=(b*(d^3))/12 // cm^4
// M.I of the area A_1 about the centroidal x-axis of the composite area (By parallel-axis theorem)
OC_1=15 // cm // from the bottom edge
OC_2=20 // cm
OC=12.9 // cm // from the bottom edge
d_1=OC_1-OC // cm
d_2=OC_2-OC // cm 
I_X1=(I_x1)+(A_1*d_1^2) // cm^4
// Area(A_2) M.I of area A_2 about x-axis
I_x2=(%pi*r^4)/64 // cm^2
// M.I of the area A_2 about the centroidal x-axis of the composite area (By parallel-axis theorem)
I_X2=(I_x2)+(A_2*d_2^2) // cm^4
// COMPOSITE AREA:M.O.I of the composite area about the centroidal x-axis
I_x=(I_X1)-(I_X2) // cm^4
// Results
clc
printf('The M.O.I of the composite area about the centroidal x-axis is %f cm^4 \n',I_x)
// There may be a small error in the answer due to decimal point discrepancy
