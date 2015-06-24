clear;
clc;
printf("\t\t\tExample Number 11.1\n\n\n");
// diffusion coefficient for co2
// Example 11.1(page no.-583)
// solution

T = 25+273.15;// [K] temperature of air
Vco2 = 34.0;// molecular volume of co2
Vair = 29.0;// molecular volume of air
Mco2 = 44;// molecular weight of co2
Mair = 28.9;// molecular weight of air
P = 1.01325*10^(5);// [Pa] atmospheric pressure
// using equation (11-2)
D = 435.7*T^(1.5)*(((1/Mco2)+(1/Mair))^(1/2))/(P*(Vco2^(1/3)+Vair^(1/3))^(2));
printf("value of diffusion coefficient for co2 in air is %f square centimeter/s",D);
