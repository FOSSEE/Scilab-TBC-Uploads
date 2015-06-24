clc();
clear;

// To calculate the heat transfer coefficient

x = 3/96;                             // Thickness of plate  in ft
k = 220;                              // thermal conductivity in Btu/hr-ft-degF
h1 = 480;                             // Inner film coefficient in Btu/hr-ft^2-degF
h2 = 1250;                            // Outer film coefficient in Btu/hr-ft^2-degF
U = 1/((1/h1)+(x/k)+(1/h2));          // Overall heat transer coeeficient in Btu-hr-ft^2-degF
printf("Overall heat transfer coefficient is %d Btu/hr-ft^2-degF",U);