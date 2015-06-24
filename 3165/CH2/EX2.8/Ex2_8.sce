//Example 2-8
//Program to Compute c o n v o l u t i o n o f g i v e n s e q u e n c e s
// x ( n ) =[1 2 1 1 ] , h ( n ) =[1 -1 1 -1] ;
clear all;
clc ;
close ;
x =[1 2 1 1];
h =[1 -1 1 -1];
y= convol (x,h);
disp ( round (y));
