clc
clear 
printf("example 8.4 page number 336\n\n")

//Chapter 8 : Measuring Devices
//Given: Balance Height=4m
//side 1-air, side 2:- N2-H2 mixture

pressure_difference = 3.4          //in mm water
pressure = 1.0133*10^5            //in pa
temperatue = 293        //in K
mass_of_air = 29       //in Kg
density_air = pressure/(temperatue*8314)*mass_of_air      //in kg/m3
printf("Density of air = %f kg/cu m",density_air)

delta_p = pressure_difference*9.8           //in pascal, acceleration due to gravity, g=9.8
Height=4
density_difference = delta_p/(9.8*Height);
printf("\n\nDensity difference = %f kg/cu m",density_difference)

density_mixture= density_air-density_difference;      //in kg/m3
printf("\n\nDensity of mixture = %f kg/cu m",density_mixture)

