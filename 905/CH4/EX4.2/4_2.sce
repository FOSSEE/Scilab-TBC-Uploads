clear;
clc;

// Illustration 4.2
// Page: 227

printf('Illustration 4.2 -  Page: 227\n\n');

// solution
//*****Data*****//
u = 3*10^-6; // [Kinematic viscosity, square m/s]
v = 0.01; // [Superficial liquid velocity, m/s]
g = 9.8; // [square m/s]
//*****//
// From table 4.1
// For metal pall rings
a_pr = 112.6; // [ square m/cubic m]
e_pr = 0.951;
Ch_pr = 0.784;
// For Hiflow rings
a_hr = 92.3; // [square m/cubic m]
e_hr = 0.977;
Ch_hr = 0.876;

// Renoylds and Froude's number for metal pall rings
Rel_pr = v/(u*a_pr);
Frl_pr = v^2*a_pr/g;
// From equation 4.5 since Rel is greater than 5, for pall rings
// ah/a = x_pr
x_pr = 0.85*Ch_pr*Rel_pr^0.25*Frl_pr^0.1;
// From equation 4.3
hl_pr = (12*Frl_pr/Rel_pr)^(1/3)*(x_pr)^(2/3); 


// Renoylds and Froude's number for Hiflow rings
Rel_hr = v/(u*a_hr);
Frl_hr = v^2*a_hr/g;
// From equation 4.5 since Rel is greater than 5, for pall rings
// ah/a = x_pr
x_hr = 0.85*Ch_hr*Rel_hr^0.25*Frl_hr^0.1;
// From equation 4.3
hl_hr = (12*Frl_hr/Rel_hr)^(1/3)*(x_hr)^(2/3);

printf("The specific liquid holdup for Metal pall ring and Hiflow ring are %f cubic m holdup/cubic m packed bed and %f cubic m holdup/cubic m packed bed respectively\n\n",hl_pr,hl_hr);
  