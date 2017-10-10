
//To calculate the room temperature in centigrades
 
//example 23.1

clear;

clc;

p0=73;//pressure (in centimeter) at 0 degree celsius

p=77.8;//pressure (in centimeter) at room temperature

p100=100.3;//pressure (in centimeter) at 100 degree celsius

t=(p-p0)/(p100-p0)*100;//formula for finding the room temperature in centigrades

printf("room temperature=%.d degree celsius",t);
