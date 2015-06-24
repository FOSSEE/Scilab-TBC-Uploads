// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 5")
//Consider a cylinder having length,L=2r determine the view factor of cylindrical surface with respect to the base.
//From the graph of radiation shape factor b/w parallel coaxial disks of equal diameter F12=0.16
F12=0.16;//View factor
//By the summation rule of an enclosure F11+F12+F13=1
//But F11=0(since the base surface is flat)
F11=0;//View factor
disp ("The view factors of cylindrical surface with respect to the base are")
F13=1-F12-F11//view factor
//By making use of reciprocity theorem we have F31=(A1/A2)*F13
//A1 and A2 are emitting surface areas
//A1/A2=(pi*r^2)/(2*pi*r*2*r)=1/4
//Let A1/A2=A
A=1/4;
F31=(A)*F13
