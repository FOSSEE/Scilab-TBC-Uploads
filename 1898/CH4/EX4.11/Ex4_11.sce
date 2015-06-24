clear all; clc;

disp("Scilab Code Ex 4.11 : ")

//Given:
area_sleeve = 600*10^-6; //m^2
area_bolt = 400*10^-6; //m^2
T1 = 15; //degree celcius
T2 = 80; //degree celcius
alpha_bolt = 12*10^-6; //per degree celcius
alpha_sleeve = 23*10^-6; //per degree celcius
l = 0.15; //m
E_bolt = 200*10^9; //N/m^2 
E_sleeve = 73.1*10^9; //N/m^2 

//Equilibrium:
//F_s = F_b

//Compatibility:
del_T = T2 - T1; // temperature difference
delb_T = alpha_bolt*del_T*l; 
delb_F = l/(area_bolt*E_bolt);
dels_T = alpha_sleeve*del_T*l; 
dels_F = l/(area_sleeve*E_sleeve);

//delb_T + F_b*delb_F = dels_T + F_s*dels_F

F_b = (dels_T-delb_T)/(delb_F+dels_F);
F_b = F_b/1000; //in kN
F_s= F_b;

sigma_b = F_b/(area_bolt*10^3); //Average Normal Stress
sigma_s = F_s/(area_sleeve*10^3); //Average Normal Stress

//Display:


printf("\n\nThe force experienced by sleeve and bolt       = %1.2f kN",F_s);
printf('\nThe average normal stress on bolt              = %1.1f MPa',sigma_b);
printf('\nThe average normal stress on sleeve            = %1.1f MPa',sigma_s);


//-----------------------------------------------------------END-----------------------------------------------------------------------------------------------
