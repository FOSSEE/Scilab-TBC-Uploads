//Find Weight fraction of errite and Cementite 
//Ex:10.6
clc;
clear;
close;
c=0.83;//carbon
f=0;//ferrite
ce=6.67;//cementite
w_a=(ce-c)/(ce-f);
disp(w_a,"Weight fraction of errite = ");
w_b=(c-f)/(ce-f);
disp(w_b,"Weight Fraction of Cementite = ");