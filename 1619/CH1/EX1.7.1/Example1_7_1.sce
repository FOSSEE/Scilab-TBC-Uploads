// Example 1.7.1  page 1.14
//To calculate the angel of refraction if the angle of incidence is 30

clc;
clear;
n1= 1.5; // for glass
n2= 1.33; // for water
phi1= (%pi/6);          // phi1 is the angel of incidence
// According to Snell's law...
// n1*sin(phi1)= n2*sin(phi2);
sinphi2= (n1/n2)*sin(phi1); // phi2 is the angle of refraction..
phi2 = asind(sinphi2);
printf(' The angel of refraction is %.2f degrees',phi2);
