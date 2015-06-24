// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 3")
disp("The view factors F13 and F31 between the surfaces 1 and 3 are ")
//Determine the view factors F13 and F31 between the surfaces 1 and 3.
//F1-2,3=F12+F13
//So F13=F1-2,3-F12
//Let F1-2,3=F123
//From Radiation Shape factor b/w two perpendicular rectangles with a commom edge table we get F12=.027,F1-2,3=0.31
F123=0.31;//View factor
F12=.27;//View factor
F13=F123-F12//View factor
//A1,A2 and A3 are the emitting surface areas
//From reciprocity relation F31=(A1/A3)/F13
A1=2;
A3=2.5;
F31=(A1/A3)*F13
