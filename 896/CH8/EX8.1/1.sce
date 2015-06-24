clc
//Example 8.1
//Calculate the speed of sound in water amd steel at 20 C
//for steel
K_steel=1.94*10^11//Pa
rho_steel=7800//Kg.m^3
c_steel=(K_steel/rho_steel)^0.5/1000//Km/s
printf("the speed of sound in steel at 20 C is %f km/s\n",c_steel);
//for water
K_water=3.14*10^5//lbf/in^2
rho_water=62.3//lbm/ft^3
//1 ft =12 in
//1 lbf.s^2 = 32.2 lbm.ft
c_water=(K_water/rho_water*144*32.2)^0.5//ft/s
printf("the speed of sound in water at 20 C is %f ft/s",c_water);