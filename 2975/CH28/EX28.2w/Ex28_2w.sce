//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 28_2w

clc;clear;
//Given Data

thick=1.5*10^-2;                    //Thickness of the ice box (Unit: m)
dim_l=60*10^-2;                     //Length of the ice box (Unit: m)
dim_b=60*10^-2;                     //Bredth of the ice box (Unit: m)
dim_h=30*10^-2;                     //Height of the ice box (Unit: m)
latent_heat_ice=3.36*10^5*10^-3;    //Latent heat of fusion of ice (kilogram is changed to gram) (Unit: J/g)
thermal_conductivity=0.04;          //Thermal conductivity of styrofoam (Unit: W/m- degree centigrade)
theta1=40;                          //Room temperature (Unit: degree centigrade)
theta2=0;                           //Ice temperature (Unit: degree centigrade)

//Calculation

total_surface_area=2*(dim_l*dim_b+dim_b*dim_h+dim_h*dim_l);                     //Calculation of the total surface area (Unit: m^2)
rate_of_heat=thermal_conductivity*total_surface_area*(theta1-theta2)/thick;     //Calculation of the rate of heat flow into the box (Unit: Watt)

rate_ice_melt=rate_of_heat/latent_heat_ice;                                     //Calculation of rate at which the ice melts (Unit: gram/sec)

disp(rate_ice_melt,"The rate at which ice melts is (Unit: gram/sec)")
