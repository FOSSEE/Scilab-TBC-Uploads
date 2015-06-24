// Initilization of variables
W=1 // N // Weight of the bob
theta=8 // degree // angle made by the bob with the vertical
r=100 // m // radius of the curve
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// from eq'n 1 & 2 we get v as,
v=(sqrt(g*r*tand(theta)))*(3600/1000) // km/hr 
T=W/cosd(theta) // N // from eq'n 2
// Results
clc
printf('The speed of the cariage is %f km/hr \n',v)
printf('The tension in the chord is %f N \n',T)
