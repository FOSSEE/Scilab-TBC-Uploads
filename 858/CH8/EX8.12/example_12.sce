clc
clear 
printf("example 8.12 page number 373\n\n")

//to find the rate of flow of flue gas

initial_CO2 = 0.02;       //weight fraction
flow_rate_CO2 = 22.5;     //gm/s
final_CO2=0.031;          //weight fraction

//flow rate of flue gas =x
//amount of CO2 entering = 0.02*x
//amount of CO2 leaving = 0.02x+0.0225
//amount of gas leaving = x+0.0225
//amount of CO2 leaving = 0.031*(x+0.0225)

deff('y=f(x)','y=initial_CO2*x+0.0225 - 0.031*(x+0.0225)');

flow_rate_flue_gas=fsolve(0,f)

printf("flow rate of flue gas = %f kg/s",flow_rate_flue_gas)

