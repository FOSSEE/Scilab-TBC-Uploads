clc
clear 
printf("example 8.8 page number 368\n\n")

//to find the coefficient of discharge for converging cone

pipe_diameter=0.15;          //in m
venturi_diameter=0.05;       //in m
pressure_drop=0.12;           //m of water
flow_rate=3;                 //in kg/s
density = 1000;              //in kg/m3
viscosity = 0.001            //in Pa-s

velocity = ((4/3.14)*flow_rate)/(venturi_diameter^2*density);
printf("velociy = %f m/s",velocity)

//calculating coefficient of discharge
Cv=velocity*((1-(venturi_diameter/pipe_diameter)^4)/(2*9.8*pressure_drop))^0.5;
printf("\n\ncoefficient of discharge = %f",Cv)

//calculating reynold's number
Re = velocity*(venturi_diameter/pipe_diameter)^2*pipe_diameter*density/viscosity;
printf("\n\nreynolds No = %f",Re)
