// Example 1.91 page 1.22
// To calculate Numerical Aperture (NA), Acceptance angle (phiA), critical Angle (phiC)...

clc;
clear;

n1= 1.5;    // RI of medium 1
n2 =1.45;   // RI of medium 2

del= (n1-n2)/n1;
NA = n1*(sqrt(2*del));
printf('The Numerical aperture is %.2f ',NA);
phiA = asind(NA);
printf('\n\nThe Acceptance angel is  %.2f degrees',phiA);

phiC = asind(n2/n1);
printf('\n\nThe Critical angel is  %.2f degrees',phiC);
