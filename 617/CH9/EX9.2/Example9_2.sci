clc();
clear;

// To find the temperature at the free end is made of copper iron and glass

D = 3/48;                                // diameter in ft
L = 9/12;                                // Length of steam vessel in ft
T1 = 210;                                // Vessel temperature in degF
T2 = 80;                                 // Air temperature in degF
th0 = T1-T2;                             // Temperature difference in degF
h = 1.44;                                // Assumed heat coefficient in Btu/hr-ft^2-degF
C = %pi*D;                               // Circumference of vessel in ft 
A = %pi*D*D/4;                           // Area of vessel in ft^2

k = 36;                                  // heat conductivity of copper in Btu/hr-ft-degF
m = sqrt(h*C/(k*A));                     // in  /ft
q=k*A*m*th0*(exp(m*L)-exp(-m*L))/(exp(m*L)+exp(-m*L)); 
// Heat loss by iron rod in Btu/hr
printf("The rate of heat loss by iron rod is %.d Btu/hr",q);


