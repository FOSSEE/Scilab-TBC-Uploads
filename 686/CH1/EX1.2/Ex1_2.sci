clc();
clear;

// To calculate the thermal resistance

b1 = 0.5/12;                        // Thickness of iron wall in ft
b2 = 0.0005/12;                     // Thickness of air gap in ft    
b3 = 1/12;                          // Thickness of aluminium wall in ft    
k1 = 30;                            // Thermal conductivity in Btu/hr-ft^2-F
k2 = 0.015;                         // Thermal conductivity in Btu/hr-ft^2-F
k3 = 118;                           // Thermal conductivity in Btu/hr-ft^2-F   
R = (b1/k1)+(b2/k2)+(b3/k3);        // Thermal resistance*Area

printf("The overall thermal resistance of composite wall is %f/A hr-F/Btu, A being the area of wall in ft^2",R);  