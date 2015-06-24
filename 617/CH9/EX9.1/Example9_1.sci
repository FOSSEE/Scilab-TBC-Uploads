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

// For copper
k1 = 219;                                // Heat conductivity of copper in Btu/hr-ft-degF
m1 = sqrt(h*C/(k1*A));                   // in  /ft
th1 = th0*2/(exp(m1*L)+exp(-m1*L));           
Tl1 = round(th1+T2);                     // The temperaure at the free end in degF
printf("Temperature at free end of the copper rod is %d degF \n",Tl1);

// For iron
k2 = 36;                                 // heat conductivity of copper in Btu/hr-ft-degF
m2 = sqrt(h*C/(k2*A));                   // in  /ft
th2 = th0*2/(exp(m2*L)+exp(-m2*L));           
Tl2 = th2+T2;                            // The temperaure at the free end in degF
printf(" Temperature at free end of the iron rod is %.2f degF \n",Tl2);

// For glass
k3 = 0.64;                                // Heat conductivity of copper in Btu/hr-ft-degF
m3 = sqrt(h*C/(k3*A));                    // in  /ft
th3 = th0*2/(exp(m3*L)+exp(-m3*L));
Tl3 = th3+T2;                             // The temperaure at the free end in degF
printf(" Temperature at free end of the glass rod is %.2f degF \n",Tl3);
