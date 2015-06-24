clc();
clear;


// to calculate the heat tranaferv coefficient for a plate in an air stream

x = 4/12;                    // distance from leading edge in ft
u = 33;                      // air velocity in fps
Ts = 125;                    // 
Tw = 255;                    // surface temperature in F
k = 0.0178;                  // Thermal conductivity in Btu/hr-ft-F
Re = 46600;                  // Reynolds number
Pr = 0.695;                  // Prandtls number

Nu = 0.332*Re^.5*Pr^(1/3);    // Nusselt number
h = Nu*k/x;                  // Local heat transfer coefficient
ha = h*12;                   // Heat transfer coefficient average
b = 1;                       // Width of plate in ft
x = 4/12;                    // Length of plate

q = ha*b*x*(Ts-Tw);          // Heat loss in Btu/hr

printf("The heat transfer coefficient for a plate in an air stream is %.2f Btu/hr-ft^2-F ",h);

