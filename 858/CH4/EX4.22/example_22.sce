clc
clear 
printf("example 4.22 page number 163\n\n")

//to find minimum fluidization velocity

d=120*10^-6    //in m
density=2500   //particle density in kg/m3
e_min=0.45;
density_water=1000   //in kg/m3
viscosity=0.9*10^-3;   //in Pa-s
umf=(d^2*(density-density_water)*9.8*e_min^3)/(150*viscosity*(1-e_min));
printf("minimum fludization velocity = %f m/s",umf)

Re_mf=(d*umf*density_water)/(viscosity*(1-e_min));


//given that uo/umf=10
function[f] = F(e)
    f = e^3+1.657*e-1.675;
endfunction

//initial guess
x = 10;
e = fsolve(x,F);

printf("\n\ne = %f",e)
length_ratio=(1-e_min)/(1-e);
printf("\n\nratio of heights = %f",length_ratio)
