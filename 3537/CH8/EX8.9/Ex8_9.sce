//Example 8_9
clc();
clear;
//To calculate the natural frequency of ultrasonic waves
l=5.5*10^-3                        //units in meters
Y=8*10^10                        //units in N/m^2
d=2.65*10^3                      //units in kg/m^3
v=(1/(2*l))*sqrt(Y/d)
printf("The natural frequency of ultrasonic waves is %.0f",v)
//In textbook answer printed wrong as 499 correct answer is 499493
