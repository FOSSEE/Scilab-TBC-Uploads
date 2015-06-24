clc();
clear;

// To calculate the depth of penetration of the temperature oscillation into the cylinder wall

rpm = 2000;                            // Revolutions per minute of motor
a = 0.64;                              // Thermal diffusivity in ft^2/hr
to = 1/(60*rpm);                       // Period of oscillation in hr
x = 1.6*sqrt(%pi*a*to);                // depth of penetration in hr
printf("the depth of penetration of the temperature oscillation into the cylinder wall is %.5f ft",x);


          