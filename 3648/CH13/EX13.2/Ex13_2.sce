//Example 13_2
clc();
clear;
//To find the frequency of the vibrations
spring=24.5       //Units in N/m
m=2      //Units in Kg
f=(1/(2*%pi))*sqrt(spring/m)        //Units in Hz
printf("The frequency of vibrations is f=%.2f Hz",f)
