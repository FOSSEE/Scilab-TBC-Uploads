//Ex:60
clc;
clear;
close;
t_s=3+(10/60);// in hours
//Area B to A=Area of half of ellipse-Area of triangle(AOB);
// =(pi*a*b)/2-(b*OC)              from given figure;
// =(pi*a*b)/2-(b*a*e);
// =0.97*a*b;
//Area A to B=(pi*a*b)/2+0.6*a*b=2.2*a*b;
//The ratio of two areas is=2.2;
t=2.2*t_s;// time taken in hours
T=ceil(t);
printf("The time taken=%d hours", T);