clear;
clc;
l=100 //length of resistor in micro-m
w=10 //width of resistor in micro-m
R=0.9 //sheet resistance in k-ohm/n 
End_points=0.65*2 //Total contribution of two end points

//Calculation
Total_squares=l/w
T=Total_squares+End_points //Total effective sqaures
Reff=T*R

format("v",8)
disp(Reff,"Effective Resistance (k-ohm)= ")
