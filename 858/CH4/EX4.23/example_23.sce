clc
clear 
printf("example 4.23 page number 167\n\n")

//to find the power requirements

P=9807   //in Pa
density=1000   //in kg/m3
Q=250/(60*density)
head=25   //in m

w= head*Q*P;     //in kW
power_delivered=w/0.65;
power_taken=power_delivered/0.9;

printf("power_delivered = %f kW",power_delivered/1000)
printf("\n\npower taken by motor = %f kW",power_taken/1000)
