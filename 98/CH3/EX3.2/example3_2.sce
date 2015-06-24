//Chapter 3
//Example 3_2
//Page 50

clear;
clc;

cl = 43;
max_dem = 20;
ugpa = 61.5e6;

//Demand factor and load factor

printf("Demand factor = %.3f \n\n", max_dem/cl);

avg_dem = ugpa/8760;
printf("Load facor = %.3f \n\n", avg_dem/max_dem/1000);
