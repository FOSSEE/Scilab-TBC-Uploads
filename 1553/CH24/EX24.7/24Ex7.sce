//Chapter 24 Ex 7

clc;
clear;
close;
l=110; b=65; w=2.5; cost=80;
A1=l*b;  //area of plot
A2=(l-2*w)*(b-2*w);  //area of plot excluding path
A3=A1-A2;  // area of path
CP=A3*(cost/100);
mprintf("The cost of gravelling the path at 80 paise per sq. metre is Rs.%d",CP);