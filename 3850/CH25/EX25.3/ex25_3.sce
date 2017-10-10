//To calculate the mass of melted Ice
//Example 25.3

clear;

clc;

m=0.2;//mass of a piece of ice in kg at 25 degree Celsius

s=4200;//specific heat capacity of water in J/kg-k

t1=25;//Initial Temperature in Celsius

t2=0;//Final Temperature in Celsius

Q=m*s*(t1-t2);//formula for finding the heat

L=3.4*10^5;//specific latent heat of fusion of ice in J/kg

M=Q/L;//The amount of ice melted

printf("Mass of the Ice Melted=%f gram",M*1000);
