// Scilab code Exa10.14 : : Page-459 (2011)
clc; clear;
R = 5;                   // Radius, femto metre
k_d = 0.98;               // The value of k for deutron 
k_p = 0.82;            // The value of k for triton
theta = rand(1,5);        // Angles at which differetial cross section is maximum, degree
// Use of for loop for angles calculation(in degree)
for l = 0:4
    theta = round((acos((k_d^2+k_p^2)/(2*k_d*k_p)-l^2/(2*k_d*k_p*R^2)))*180/3.14);
    printf("\nFor l = %d", l);
    printf(",the value of theta_max = %d degree", ceil(theta));
    end

// Result
// For l = 0,the value of theta_max = 0 degree
// For l = 1,the value of theta_max = 8 degree
// For l = 2,the value of theta_max = 24 degree
// For l = 3,the value of theta_max = 38 degree
// For l = 4,the value of theta_max = 52 degree 