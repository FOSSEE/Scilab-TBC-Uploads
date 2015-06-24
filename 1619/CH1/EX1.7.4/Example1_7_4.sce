// Example 1.7.4 page 1.15
// To find the angle of refraction..

clc;
clear;
n1= 1.5     // TheRi of medium 1
n2= 1.36    // the RI of medium 2
phi1= 30;   // The angle of incidence
// According to Snell's law...
// n1*sin(phi1)= n2*sin(phi2);
phi2 = asind((n1/n2)*sind(phi1));
printf('The angel of refraction is  %.2f degrees from normal',phi2);
