// Example 2.13, page no-44
clear
clc

A=42000            //Apogee in km
P=8000             //Perigee in km
v_p=9.142          // velocity at perigee point
v_a=v_p*P/A
printf("Velocity at apogee = %.3f km/s",v_a)
