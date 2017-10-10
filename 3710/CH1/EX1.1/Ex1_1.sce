//Example 1.1, Page Number 10
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Brewster Angle Calculation
clc;

n2=1.5 //Refractive Index of Glass in Air
n1=1   //Refractive Index of Air

theta=0 //Brewster's Angle in Degrees

theta=(atand(1.5))//(Brewster's angle= Tan Inverse (n2/n1))
theta=fpround(theta,2)
disp(theta,"The Brewsters Angle for the Material in Degrees:");
