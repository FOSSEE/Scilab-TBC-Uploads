clear;
clc;

//Example13.1[View Factors Associated with two Concentric Spheres]
//Solution:-
//The outer surface of the smaller sphere and inner surface of the larger sphere form a two surface enclosure
N=2;
disp("View Factors",N^2,"This enclosure involves ")
x=(1/2)*N*(N-1);
disp("view factor directly",x,"W need to determine only")
F11=0;
F12=1;
disp("The Two view Factors")
disp(F11,"Since no radiation leaving surface 1 strikes itself..... F11=")
disp(F12,"Since all radiation leaving surface 1 strikes surface 2    F12=")
disp("F12= ((r1/r2)^2)")
disp("F22= 1-((r1/r2)^2)")
disp("where r1 and r2 are radius of surface 1 and surface 2")