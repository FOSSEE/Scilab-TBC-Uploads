clc();
clear;

// To calculate the overall heat transfer coefficient

r2 = 3/96;                            // Outer radius in ft
x = 0.1/12;                           // Thickness of plate  in ft
r1 = r2-x;                            // Outer radius in ft
k = 200;                              // thermal conductivity in Btu/hr-ft-degF
h1 = 280;                             // Inner film coefficient in Btu/hr-ft^2-degF
h2 = 2000;                            // Outer film coefficient in Btu/hr-ft^2-degF
U = 1/((r2/(h1*r1))+(r2*log(r2/r1)/k)+(1/h2));         // Overall heat transer coeeficient in Btu-hr-ft^2-degF
printf("Overall heat transfer coefficient is %d Btu/hr-ft^2-degF",U);