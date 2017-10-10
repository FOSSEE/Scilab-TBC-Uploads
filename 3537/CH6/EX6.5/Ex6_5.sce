//Example 6_5
clc();
clear;
//To find the relative population of the states in Ruby laser
h=6.626*10^-34
v=3*10^8  //units in met/sec
kb=1.381*10^-23  //units in J/L
t=300   //units in K
n_no=exp((h*v)/(kb*t))
printf("The relative population of two states is N/N0=")
disp(n_no)
//In textb book answer is printed wrong as 8*10^31 correct answer is 1.000048 
