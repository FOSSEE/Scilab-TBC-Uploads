//Example 1.9.9 page 1.27
// Calculate NA and solid acceptance angle. Also find critical angle...

clc;
clear;

del = 0.01;     // relative RI difference..
n1 = 1.48;      // RI of core...

NA = n1*(sqrt(2*del));      //Numerical Aperture..
printf('The Numerical Aperture is %.3f',NA);

theta = %pi*NA^2;       //Solid Acceptance angle...
printf('\n\nThe Solid Acceptance angel is  %.4f degrees',theta);

n2 = (1-del)*n1;
phiC = asind(n2/n1);        //Critical Angle...
printf('\n\nThe Critical angel is  %.2f degrees',phiC);
printf("\n\nCritical angle wrong due to rounding off errors in trignometric functions..\n Actual value is 90.98 in book.");
