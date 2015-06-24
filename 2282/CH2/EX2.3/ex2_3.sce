// Example 2.3, page no-37
clear
clc

ma=42000  //Major axis distance in Km
P=8000    //Perigee distance in Km

A=ma-P
e=(A-P)/ma

printf("Apogee=%dkm\n Eccentricity=%.2f",A,e)
