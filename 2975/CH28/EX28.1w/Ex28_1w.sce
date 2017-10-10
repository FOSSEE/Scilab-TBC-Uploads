//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 28_1w

clc;clear;
//Given Data

latent_heat_ice=3.36*10^5;  //Latent heat of fusion of ice (Unit: J/kg)
mass=4.8*10^-3;             //Mass of ice melt (Unit: kg)
t=3600;                     //Time in which ice melt (Unit: second)
area=3600*10^-4;            //Area of the slab (Unit: m^2)
thickness=10*10^-2;         //Thickness of the slab (Unit: m)
theta2=0;                   //Temperature of the ice (Unit : degree centigrade)
theta1=100;                 //Temperature of the steam (Unit: degree centigrade)

//calculation

q=mass*latent_heat_ice;     //Calculation of the heat transferred through the slab to the ice in one hour  (Unit : Joule)
k=q*thickness/(area*t*(theta1-theta2));     //Calculation of thermal conductivity of the stone (Unit : W/m-degree centigrade )

disp(k,"The thermal conductivity of the stone is (Unit: W/m-degree centigrade)");
