clear;
clc;

// Illustration 7.7
// Page: 454

printf('Illustration 7.7 -  Page: 454\n\n');

// solution
//*****Data*****//
Ff = 1.89; // [cubic m/min]
Fs = 2.84; // [cubic m/min]
t = 2; // [min]
//*****//

printf('Illustration 7.7(a) -  Page: 454\n\n');
// Solution(a)

Q = Ff+Fs; // [total flow rate, cubic m/min]
Vt = Q*t; // [cubic m]
// For a cylindrical vessel H = Dt
Dt = (4*Vt/%pi)^(1/3); // [m]
H = Dt; // [m]
printf("The diameter and height of each mixing vessel is %f m and %f m respectively.\n\n",Dt,H);

printf('Illustration 7.7(b) -  Page: 454\n\n');
// Solution(b)
// Based on a recommendation of Flynn and Treybal (1955),
P = 0.788*Vt; // [mixer power, kW]
printf("The agitator power for each mixer is %f kW.\n\n",P);

printf('Illustration 7.7(c) -  Page: 454\n\n');
// Solution(c)

// Based on the recommendation by Ryan et al. (1959), the disengaging area  // in the settler is
// Dt1*L1 = Q/a = Y
a = 0.2; // [cubic m/min-square m]
Y = Q/a; // [square m]
// For L/Dt = 4
Dt1 = (Y/4)^0.5; // [m]
L1 = 4*Dt1; // [m]
printf("The diameter and length of a settling vessel is %f m and %f m respectively.\n\n",Dt1,L1);

printf('Illustration 7.7(d) -  Page: 454\n\n');
// Solution(d)
// Total volume of settler
Vt1 = %pi*Dt1^2*L1/4; // [cubic m]
tres1 = Vt1/Q; // [min]
printf("The residence time in the settling vessel is %f min.\n\n",tres1); 