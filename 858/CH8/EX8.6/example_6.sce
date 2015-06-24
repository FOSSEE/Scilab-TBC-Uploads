clc
clear 
printf("example 8.6 page number 342\n\n")

//to find the viscosity of solution using given parameters

diameter =10;               //in mm
density_of_solution = 1750;     //in kg/m3
density_of_air = 1.2;           //in kg/m3
velocity = 0.9;          //in mm/s
viscosity = (density_of_solution-density_of_air)*9.8*(diameter*10^-3)^2/(18*velocity*10^-3);         //expression for finding viscosity

printf("viscosity of solution = %f Pa-s",viscosity)


//checking stoke's region validity
v=(0.2*viscosity)/(density_of_solution*diameter*10^-3);
if v>0.9 then printf("\n\nsystem follows stokes law")
end
