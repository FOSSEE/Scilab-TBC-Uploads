clc
//initialisation of variables
d1= 18 //in
d2= 10 //in
d3= 4 //in
Wpercuin= 0.31 //lb
L1= 4 //in
L2= 8 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
m1= %pi*(d1/2)^2*L1*Wpercuin/g
I1= m1*(d1/24)^2/2
m2= %pi*(d2/2)^2*L2*Wpercuin/g
I2= m2*(d2/24)^2/2
m3= %pi*(d3/2^2)*(L1+L2)*Wpercuin/g
I3= m3*(d3/24)^2/2
I= I1+I2-I3
//RESULTS
printf ('I= %.2f slug ft^2',I)

