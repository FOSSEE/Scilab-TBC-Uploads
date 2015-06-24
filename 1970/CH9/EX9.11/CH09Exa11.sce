// Scilab code Exa9.11 : : Page-394 (2011)
clc; clear;
R_0 = 1.2e-015;        // Distance of closest approach, metre
// Mass number of the nuclei are allocated below :
N = rand(4,1)
N(1,1) = 17;        // for oxygen
N(2,1) = 33;        // for sulphur
N(3,1) = 63;        // for copper
N(4,1) = 209;        // for bismuth
for i = 1:4

   if N(i,1) == 17 then
       printf("\n For Oxygen : ")
        I = 5/2;        // Total angular momentum
        l = 2;        // Orbital angular momentum
        mu = -1.91;        // for odd neutron and I = l+1/2
        Q = -3/5*(2*I-1)/(2*I+2)*(R_0*N(i,1)^(1/3))^2*10^28;    // Quadrupole moment of oxygen, barn
        printf("\n         The value of magnetic moment is : %4.2f \n         The value of quadrupole moment is : %6.4f barn", mu, Q);
    elseif N(i,1) == 33 then
        printf("\n\n For Sulphur : ")
         I = 3/2;        // Total angular momentum
         l = 2;            // Orbital angular momentum
         mu = 1.91*I/(I+1);        // for odd neutron and I = l-1/2
         Q = -3/5*(2*I-1)/(2*I+2)*(R_0*N(i,1)^(1/3))^2*10^28;    // Quadrupole moment of sulphur, barn
        printf("\n         The value of magnetic moment is : %5.3f \n         The value of quadrupole moment is : %6.4f barn", mu, Q);  
        elseif N(i,1) == 63 then
            printf("\n\n For Copper : ")
         I = 3/2;        // Total angular momentum
         l = 1;            // Orbital angular momentum
         mu = I+2.29;            // for odd protons and I = l+1/2
         Q = -3/5*(2*I-1)/(2*I+2)*(R_0*N(i,1)^(1/3))^2*10^28;    // Quadrupole momentum of copper, barn
        printf("\n         The value of magnetic moment is : %4.2f \n         The value of quadrupole moment is : %6.4f barn", mu, Q);
        elseif N(i,1) == 209 then
            printf("\n\n For Bismuth : ")
         I = 9/2;    // Total angular momentum
         l = 5;        // Orbital angular momentum
         mu = I-2.29*I/(I+1);     // for odd protons and I = l-1/2
         Q = -3/5*(2*I-1)/(2*I+2)*(R_0*N(i,1)^(1/3))^2*10^28;    // Quadrupole momentum of bismuth, barn
        printf("\n         The value of magnetic moment is : %4.2f \n         The value of quadrupole moment is : %5.3f barn", mu, Q);
   end
end

// Result
// For Oxygen : 
//         The value of magnetic moment is : -1.91 
//         The value of quadrupole moment is : -0.0326 barn

// For Sulphur : 
//         The value of magnetic moment is : 1.146 
//         The value of quadrupole moment is : -0.0356 barn

// For Copper : 
//         The value of magnetic moment is : 3.79 
//         The value of quadrupole moment is : -0.0547 barn

// For Bismuth : 
//         The value of magnetic moment is : 2.63 
//         The value of quadrupole moment is : -0.221 barn   
