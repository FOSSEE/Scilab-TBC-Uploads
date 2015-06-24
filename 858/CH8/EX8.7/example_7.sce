clc
clear 
printf("example 8.7 page number 367\n\n")

//to find the flow rate in an orifice
density_of_water = 1000;     //in kg/m3
viscosity = 1*10^-3;         //in Pa-s
pipe_diameter = 250;         //in mm
orifice_diameter = 50;       // in mm
density_of_mercury = 13600;  // in mm
manometer_height = 242;      //in mm

//calculation
height_water_equivalent = (density_of_mercury-density_of_water)*(manometer_height*10^-3)/(density_of_water)     //in m

//assuming Re>30000
Co = 0.61;
velocity = Co*(2*9.8*height_water_equivalent/(1-(orifice_diameter/pipe_diameter)^4))^0.5;     //in m/s

//checking Reynold's number
Re = (orifice_diameter*10^-3*velocity*density_of_water)/viscosity;
printf("reynolds number = %f\nwhich is greater than 30000",Re)

if Re>30000 then printf("\n\nvelocity of water = %f m/s",velocity)

end

rate_of_flow = (3.14*(orifice_diameter*10^-3)^2/4)*velocity*density_of_water;
printf("\n\nrate of flow = %f litre/s",rate_of_flow)
