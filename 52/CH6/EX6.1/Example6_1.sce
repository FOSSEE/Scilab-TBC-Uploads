//Example 6.1
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to Calculate Group Delay and Phase Delay
//y(n)=0.25x(n)+x(n-1)+0.25x(n-2)
clear;
clc ;
close ;
//w=poly(0,"w");
syms w;
theeta=-w;
gd= -diff (theeta,w); //Group Delay
pd=-theeta/w; //Phase Delay      
disp(gd,'GROUP DELAY =');
disp(pd,'PHASE DELAY =');