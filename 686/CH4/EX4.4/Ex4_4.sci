clc();
clear;

// To calculate the time needed to estabilish a steady state temperature distribution in the walls and in the room
tf = 70;                            // Final temperature of the wall in F
hi = 1.2;                           // Inner heat transfer coefficint of wall i Btu/hr-ft^2-degF
ho = 3.0;                            // Outer heat transfer coefficient in Btu/hr-ft^2-degF
a = 0.012;                           // Thermal diffusivity in ft^2/hr
x = 1.3;                            // Thickness of wall in ft

// Assuming the rate of heat trasfer to the inside of a wall is constant
// And since the wall is divided into six sections 
delx = x/6;                        // Thickness of sections in ft
t = (delx)^2/(2*a);                  // time required in hr
printf("the time needed to estabilish a steady state temperature distribution in the walls and in the room is %.2f hr",t);

