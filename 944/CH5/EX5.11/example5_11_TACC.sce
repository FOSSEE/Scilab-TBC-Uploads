//example 5.11

clear;
clc;

//Given:
N=3;//Total no. of balls
Nb=2;//Black balls
Nw=1;//white ball

//To find the total no. possible configuration
w=prod(1:N)/prod(1:Nb)/prod(1:Nw);

printf("The total no. of possible configurations are %f ",w);








