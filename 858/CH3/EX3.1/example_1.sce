clc
clear 
printf("example 3.1 page number 90\n\n")

//to find the coal consumption
w_C = 0.6;   //amount of carbon in coal
N2_content = 40   //in m3 per 100m3 air

air_consumed = N2_content/0.79;
weight_air = air_consumed*(28.8/22.4);
O2_content = air_consumed*32*(0.21/22.4);    //in kg

H2_content = 20   //in m3

steam_consumed = H2_content*(18/22.4);

C_consumption1 = (12/18)*steam_consumed;   //in reaction 1
C_consumption2 = (24/32)*O2_content;    //in reaction 2

total_consumption = C_consumption1+C_consumption2;
coal_consumption = total_consumption/w_C;

printf("coal consumption = %f kg",coal_consumption)
