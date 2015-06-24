//Initilization of variables
V=[1728*10^3,432*10^3,7.54*10^3]
x_bar=[60,140,60] //mm
y_bar=[30,20,30] //mm
//Calculations
x=(V(1)*x_bar(1)+V(2)*x_bar(2)+V(3)*x_bar(3))/(V(1)+V(2)+V(3)) //mm
y=(V(1)*y_bar(1)+V(2)*y_bar(2)+V(3)*y_bar(3))/(V(1)+V(2)+V(3)) //mm
z=120 //mm from symmetry
//Result
clc
printf('The centroid is at x=%f mm y=%f mm and z=%fmm',x,y,z)
//Decimal accuracy causes discrepancy in answers
