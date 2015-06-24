clc
clear
//INPUT DATA
v1=330 //speed of sound
t3=303 //fundamental temperature for the air
t1=273// 0deg C
//calculation
v3=v1*(t3/t1)^0.5 //new speed of sound
f=v3/0.66 //frequency
fb=f-520 //frequency of beats
//output
printf("the frequency of beats is %3.3f Hz",fb)
