clc,clear
//Example 1.15
// To find the distance from centre of earth to sun

alpha = 0.00244; // equitorial paralalx in degree
OA = 3956.6; //radius of earth
angle_OAB = 90;

OB = OA / sind(alpha) ;
printf('Distance is obtained as %.0f miles = %.0f million miles',OB,OB/10^6)
