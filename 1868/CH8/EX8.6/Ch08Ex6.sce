// Scilab code Ex8.6: Pg 272 (2005)
clc; clear;
// For simplicity let h_cross = 1
h_cross = 1;   // Reduced planck's constant
l = 3;  // Given orbital quantum number
L = sqrt(l*(l+1)*h_cross);    // Magnitude of total angular momentum, in h_cross units
m_l = [-3, -2, -1, 0, 1, 2, 3];
L_z = m_l*h_cross;  // Allowed values of L_z
cos_theta = L_z/L;
theta = acosd(L_z/L);  // Orientations of L_z, degrees
for i = 1:1:7
    if theta(i) > 90 then
        theta(i) = theta(i)-180;
    end
end
printf("\nThe magnitude of total angular momentum = 2*sqrt(%d)*h_cross\n", L^2/4);
printf("\nThe allowed values of L_z in units of h_cross are :");
disp(L_z);
printf("\nThe orientations of L_z in degrees are:");
disp(theta);

// Result
// The magnitude of total angular momentum = 2*sqrt(2)*h_cross

// The allowed values of L_z in units of h_cross are : 
//   - 3.  - 2.  - 1.    0.    1.    2.    3.  

// The orientations of L_z in degrees are: 
//   - 30.  - 54.73561  - 73.221345    90.    73.221345    54.73561    30.  
