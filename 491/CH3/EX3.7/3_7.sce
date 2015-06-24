H = 40 ; // Power in hp
s = 6000 ; // allowable shear stress in steel in psi
// Part (a)
n = 500 ; // rpm
T = ((33000*H)/(2*%pi*n))*(5042/420); // Torque in lb-in
d = ((16*T)/(%pi*s))^(1/3); // diameter in inch
disp("inch",d,"Diameter of the shaft at 500 rpm")
// Part (b)
n1 = 3000 ; // rpm
T1 = ((33000*H)/(2*%pi*n1))*(5042/420); // Torque in lb-in
d1 = ((16*T1)/(%pi*s))^(1/3); // diameter in inch
disp("inch",d1,"Diameter of the shaft at 3000 rpm")