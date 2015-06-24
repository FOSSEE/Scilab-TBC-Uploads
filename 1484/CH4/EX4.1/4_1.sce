clc 
//initialisation of variables
M= 31*10 //lbs
P= 3.6 //lbs
t= 60 //sec
g= 32.2 //ft/sec^2
H= 9 //ft
d= 1 //in
w= 6.24 //gallons
//CALCULATIONS
v= P*g*t/M
V= sqrt(2*g*H)
Cv= v/V
V1= %pi*(d/12)^2*V*60*w/4
Cd= M/(10*V1)
Cc= Cd/Cv
Cr= (1/Cv^2)-1
//RESULTS
printf ('Coefficient of resistance = %.2f ',Cr)
