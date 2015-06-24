clc
clear 
printf("example 8.11 page number 372\n\n")

//to find the maximum capacity of keroscene
flow_rate_steel=1.2;     //l/s
density_steel=7.92;
density_kerosene=0.82;
density_water=1;
flow_rate_kerosene =(((density_steel-density_kerosene)/density_kerosene)/((density_steel-density_water)/density_water))^0.5*flow_rate_steel
printf("maximum_flow rate of kerosene = %f litre/s",flow_rate_kerosene)
