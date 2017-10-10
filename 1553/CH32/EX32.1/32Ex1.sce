//Chapter 32 Ex 1

clc;
clear;
close;
amt=930; R=3; t=8;
PW=(100*amt)/(100+(R*t));
TD=amt-PW;
mprintf("The present worth  and true discount of Rs.930 due 3yrs at 8 percent per annum Rs %d and Rs %d",PW,TD);
