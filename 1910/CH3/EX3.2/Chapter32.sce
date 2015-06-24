// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 3, Example 2")
//Temperature in K at four edges are given
//Theta is non dimensional temperature defined as ((T-300)/100) where T is actual temperature in K.
//Given length as well as the breadth of square plate is ''a''
//Problem can be divided into two modules
//Solution to module 1 is given by Eq. 3.23
//Solution of first module is non dimensional temperature theta1
//theta1=2*sinh(pi*y/a)*sin(pi*x/a)/(sinh(pi))
//Solution to module 2 is given by Eq. 3.24
//Solution of second module is non dimensional temperature theta2
//theta2=sinh(pi*x/a)*sin(pi*y/a)/(sinh(pi))
//Therefore
disp("Steady state non dimensional temperature is")
disp("theta=2*sinh(pi*y/a)*sin(pi*x/a)/(sinh(pi)) + sinh(pi*x/a)*sin(pi*y/a)/(sinh(pi))")
//At the centre, x coordinate and y coordinate in unit are
//x=a/2, y=a/2
//Non dimensional temperature at centre point
theta = (2*sinh(%pi/2))/sinh(%pi)+sinh(%pi/2)/sinh(%pi);
//Temperature in K at centre point
disp("Temperature in K at centre point")
T = theta*100+300
