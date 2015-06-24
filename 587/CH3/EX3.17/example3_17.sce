clear;
clc;

//Example13.17[The R value of a Wall with Rigid Foam]
//Given:-
//using values from previous example 
R_old=2.23;//AS written in book[m^2.degree Celcius/W]
//R value of of the fibreboard and the foam insulation, respectively
R_removed=0.23;//[m^2.degree Celcius/W]
R_added=0.98;//[m^2.degree Celcius/W]
//Solution:-
R_new=R_old-R_removed+R_added;//[m^2.degree Celcius/W]
increase=((R_new-R_old)/R_old)*100;
disp("m^2.degree Celcius/W",R_old,"Old R value is")
disp("m^2.degree Celcius/W",R_new,"New R value is")
disp(increase,"Percent increase in R-value")