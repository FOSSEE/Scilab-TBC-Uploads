// Initilization of variables
b1=120 // mm // width of the flange pate of L-section
d1=20 // mm // depth of the flange plate
b2=20 // mm // width/thickness of the web
d2=130 // mm // depth of the web
// Calculations
// (a) Location of the centroid of the composite area
A_1=b1*d1 // mm^2 // area of the flange plate
A_2=b2*d2 // mm^2 // area of the web
y_1=d2+(d1/2) // mm // y-coordinate of the centroid
y_2=d2/2 // mm // y-coordinate of the centroid
x_1=60 // mm // x-coordinate of the centroid
x_2=110 // mm // x-coordinate of the centroid
y_c=((A_1*y_1)+(A_2*y_2))/(A_1+A_2) // mm // from the bottom edge
x_c=((A_1*x_1)+(A_2*x_2))/(A_1+A_2) // mm // from the bottom edge
// (b) Moment of Inertia of the composite area about the centroidal x-axis
// Area (A_1) M.I of area A_1 about x-axis
I_x1=(b1*(d1^3))/12 // mm^4
// M.I of the area A_1 about the centroidal x-axis of the composite area (By parallel-axis theorem)
OC_1=d2+(d1/2) // mm // from the bottom edge
OC_2=d2/2 // mm // from the bottom edge
OC=y_c // mm // from the bottom edge
d_1=(d2-y_c)+(d1/2) // mm
d_2=y_c-OC_2 // mm 
I_X1=(I_x1)+(A_1*d_1^2) // mm^4
// Area(A_2) M.I of area A_2 about x-axis
I_x2=(b2*d2^3)/12 // mm^4
// M.I of the area A_2 about the centroidal x-axis of the composite area (By parallel-axis theorem)
I_X2=(I_x2)+(A_2*d_2^2) // mm^4
// COMPOSITE AREA:M.O.I of the composite area about the centroidal x-axis
I_x=(I_X1)+(I_X2) // mm^4
// (c) Moment of Inertia of the composite area about the centroidal y-axis
// Area (A_1) M.I of area A_1 about y-axis
I_y1=(d1*(b1^3))/12 // mm^4
// M.I of the area A_1 about the centroidal y-axis of the composite area (By parallel-axis theorem)
d_3=x_c-(b1/2) // mm // distance between c &c1 along x axis
I_Y1=(I_y1)+(A_1*d_3^2) // mm^4
// Area(A_2) M.I of area A_2 about y-axis
I_y2=(d2*b2^3)/12 // mm^4
// M.I of the area A_2 about the centroidal y-axis of the composite area (By parallel-axis theorem)
d_4=b1-x_c-(b2/2) // mm // distance between c &c2 along x axis
I_Y2=(I_y2)+(A_2*d_4^2) // mm^4
// COMPOSITE AREA:M.O.I of the composite area about the centroidal y-axis
I_y=(I_Y1)+(I_Y2) // mm^4
// Results
clc
printf('The M.O.I of the composite area about the centroidal x-axis is %f mm^4 \n',I_x)
printf('The M.O.I of the composite area about the centroidal Y-axis is %f mm^4 \n',I_y)
// NOTE: The answer for I_x given in text book is 0.76*10^6 insted of 10.76*10^6
