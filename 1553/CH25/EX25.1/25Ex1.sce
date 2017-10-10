//Chapter 25, Ex1
clc;
clear;
close;
l=16; b=14; h=7;      //given
volume=l*b*h;
surface_area=[2*((l*b)+(b*h)+(l*h))];
//disp("cubic meter",volume,"The volume is:")
//disp("cubic centimeter",surface_area,"The surface area is:");
printf("The volume is %d cubic meter",volume);
printf("\n The surface area is %d cubic centimeter",surface_area);
