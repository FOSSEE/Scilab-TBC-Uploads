// Initilization of variables
I_x=1548 // cm^4 // M.O.I of the Z-section about X-axis
I_y=2668 // cm^4 // M.O.I of the Z-section about Y-axis
b=12 // cm // width of flange of the Z-section
d=3 // cm // depth of flange of the Z-section
t=2 // cm // thickness of the web of the Z-section
h=6 // cm // depth of the web of the Z-section
//Calculations
A_1=b*d // cm^2 // area of top flange
x_1=-5 // cm // distance of the centroid from X-axis for top flange
y_1=4.5 // cm // distance of the centroid from Y-axis for top flange
A_2=t*h // cm^2 // area of web
x_2=0 // cm // distance of the centroid from X-axis for the web
y_2=0 // cm // distance of the centroid from Y-axis for the web
A_3=b*d // cm^2 // area of bottom flange
x_3=5 // cm // distance of the centroid from X-axis for top flange
y_3=-4.5 // cm // distance of the centroid from Y-axis for top flange
// Product of Inertia of the total area is,
I_xy=((A_1*x_1*y_1)+(A_3*x_3*y_3)) // cm^4
// The direction of the principal axes is,
theta_m=(atand((2*I_xy)/(I_y-I_x)))/2 // degree
// Principa M.O.I
I_max=((I_x+I_y)/2)+(sqrt(((I_x-I_y)/2)^2+(I_xy)^2)) // cm^4
I_mini=((I_x+I_y)/2)-(sqrt(((I_x-I_y)/2)^2+(I_xy)^2)) // cm^4
// Results
clc
printf('The principal axes of the section about O is %f degree \n',theta_m)
printf('The Maximum value of principal M.O.I is %f cm^4 \n',I_max)
printf('The Minimum value of principal M.O.I is %f cm^4 \n',I_mini)
