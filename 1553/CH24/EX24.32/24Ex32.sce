//Chapter 24 Ex 32

clc;
clear;
close;
R=1;    // assuming radius of the circle is 1.
NR=(50/100)*R;
OArea=(%pi)*(R^2);
NArea=(%pi)*(NR^2);
dec=((OArea-NArea)*100)/OArea;
mprintf("The percentage decrease in area of circle is %d percent",dec);