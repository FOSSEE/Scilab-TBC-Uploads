clc();
clear;

// To determine the effectiveness of iron fins of 0.14 inch thickness 
// For heat transfer to air
b = 0.12/12;              // Thickness of iron fins in ft
k = 33;                   // Mean thermal conductivity of iron in Btu/hr-ft^2
Hamin = 2;                // Minimum heat ransfer coefficient with air in Btu/hr-ft^2-F
Hamax = 20;               // Minimum heat ransfer coefficient with air in Btu/hr-ft^2-F
// Inserting the higher value of heat transfer coefficient 
m1 = 2*k/(Hamax*b);       // Characteristic value
// haracteristic value is quite high
printf("Since m = %d, hence the heat transfer from iron fins to air is advantageous \n",m1);

// For heat transfer to water

Hwmin = 100;                // Minimum heat ransfer coefficient with air in Btu/hr-ft^2-F
Hwmax = 1000;               // Minimum heat ransfer coefficient with air in Btu/hr-ft^2-F
// Inserting the higher value of heat transfer coefficient 
m2 = 2*k/(Hwmax*b);         // Characteristic value
// Characteristic value is quite low
printf("Since m = %.1f, hence the heat transfer from iron fins to water is not advantageous \n",m2);

