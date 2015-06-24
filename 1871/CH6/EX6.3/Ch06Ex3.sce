// Scilab code Ex6.3: Pg:248 (2008)
clc;clear;
mu_glass = 1.54;    // Refractive index of the glass
mu_water = 1.33;    // Refractive index of the water
mu_1 = mu_glass/mu_water;    // Refractive index for a water to glass interface
mu_2 = mu_water/mu_glass;    // Refractive index for a glass to water interface
// Since mu = tan i_p, solving for i_p 
i_p_1 = atand(mu_1);    // Angle of polarization for water to glass interface, degree
i_p_2 = atand(mu_2);    // Angle of polarization for glass to water interface, degree
printf("\nThe polarizing angle for the water to glass interface is larger than that of glass to water inteface by %3.1f degree", i_p_1 - i_p_2);

// Result 
// The polarizing angle for the water to glass interface is larger than that of glass to water inteface by 8.4 degree