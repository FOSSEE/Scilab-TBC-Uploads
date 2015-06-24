clc();
clear;

// To calculate the overall thermal resistance and overall heat transfer coefficient

b = 0.5/12;                        // Thickness of iron wall in ft
k = 30;                            // Thermal conductivity in Btu/hr-ft    
h1 = 2;                            // Heat transfer coefficient in Btu/hr-ft   
h2 = 2;                            // Heat transfer coefficient in Btu/hr-ft  
R = (1/h1)+(1/h2)+(b/k);           // Overall thermal resistance*Area in hr-F/Btu ie. (R/A)
U = 1/R;                           // Overall heat transfer coeficient in Btu/hr-ft^2-F
                    
printf("The overall thermal resistance is %.4f/A hr-F/Btu/A, where A is the area of wall  \n",R);
printf(" The overall heat transfer coefficient is %d Btu/hr-ft^2-F",round(U));                                                