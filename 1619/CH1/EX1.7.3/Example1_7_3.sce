// Example 1.7.3 page 1.15
//  To find RI of glass
// To find the critical angle for glass...

clc;
clear;
phi1 = 33   // Angle of incidence..
phi2 = 90   //Angle of refraction..
// According to Snell's law...
// n1*sin(phi1)= n2*sin(phi2);
//a = sin(phi1*%pi/(180));
// Assume n1 is the RI of glass and n2 is RI of air
n2= 1;
n1 = sind(90)/sind(33);
printf('The Refractive Index is  %.2f',n1);

// To calculate thre critical angle...
n1 =  1.836;    // From above rounded off to 3 decimal points...
phiC = asind((n2/n1)*sind(90));
phiC=asind(0.54);
printf('\n\nThe Critical angel is  %.2f degrees',phiC);
