clc
clear 
printf("example 3.8 page number 96\n\n")

//to find the amount of water in residue

vp_water = 31.06   //in kPa
vp_benzene = 72.92   //in kPa

P = vp_water +vp_benzene;
x_benzene = vp_benzene/P;
x_water = vp_water/P;

initial_water = 50/18;   //in kmol of water
initial_benzene = 50/78   //in kmol of benzene
water_evaporated = initial_benzene*(x_water/x_benzene);
water_left = (initial_water - water_evaporated);

printf("amount of water left in residue = %f kg",water_left*18)
