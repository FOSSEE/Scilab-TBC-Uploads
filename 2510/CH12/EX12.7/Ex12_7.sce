//Variable declaration:
T_sat = 126.0                   //Saturation temperature (°F)
T = 64.0                        //Surface temperature of tube (°F)
g = 32.2                        //Gravitational acceleration (ft^2/s)
D = 4.0/12.0                    //Outside diameter of tube (ft)

//Calculation:
Tf = (T_sat+T)/2.0               //Mean film temperature (°F)
//From approximate values of key properties:
h_vap = 1022.0                  //Latent heat of steam (Btu/lb)
p_v = 0.00576                   //Density of steam (lb/ft^3)
p_l = 62.03                     //Density of liquid (lb/ft^3)
k_l = 0.364                     //Thermal conductivity of liquid (Btu/h.ft.°F)
mu_l = 4.26*10**-4              //Absolute viscosity of liquid water condensate (lb/ft.s)
h = 0.725*((p_l*(p_l-p_v)*g*h_vap*k_l**3)/(mu_l*D*(T_sat-T)/3600.0))**(1.0/4.0)   //Average heat transfer coefficient (Btu/h.ft^2.°F)

//Result:
printf("The average heat transfer coefficient is : %.1f Btu/h.ft^2.°F.",h)
