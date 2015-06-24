//Chapter 2
//Example 2_5
//PAge 18

clear;clc;

power=100;
cv=6400;
n_thermal =0.3;
n_electrical =0.92;

//coal consumption
n_overall = n_thermal*n_electrical;
ugpa=power*1000;
h=ugpa*860/n_overall;
printf("Coal consumption per hour = %.1f kg \n\n", h/cv);
