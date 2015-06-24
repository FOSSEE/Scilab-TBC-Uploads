clc
// Intialization of variables
D = 2.38*0.001 // slug/ft^3
Q = 230/60 // ft^3/s
r2 = 6/12 //ft
W = 1725*(2*%pi/60) // rad/s
a = 30 // degrees
h = 1/12 //ft
// calculations
M = D*Q // slugs/s
U2 = r2*W // ft/s
W2 = M/(D*2*%pi*r2*h*sind(a)) // ft/s
V02 = U2 -W2*cosd(a) // ft/s
Wsh = M*U2*V02/ 550 // hp
// results
printf("the power required to run is %.4f hp",Wsh)
