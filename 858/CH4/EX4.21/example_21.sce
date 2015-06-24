clc
clear 
printf("example 4.21 page number 160\n\n")

//to find the pressure gradient

Q=0.0003    //in m3/s
d=0.05    //in m
A=(3.14*d^2)/4;

u=Q/A;

density=1000;   //in kg/m3
viscosity=0.001;  //in Pa-s
e=0.3;
dp=0.00125;   //particle diameter in m

Re=(dp*u*density)/(viscosity*(1-e));
fm=(150/Re)+1.75;
L=0.5   //in m
delta_Pf=fm*((density*L*u^2)/dp)*((1-e)/e^3);   //in Pa

//applying bernoulli's equation, we get
delta_P=delta_Pf-(density*9.8*L);
pressure_gradient=delta_P/(L*1000);   //in kPa/m
printf("required pressure gradient = %f kPa/m of packed height",pressure_gradient)
