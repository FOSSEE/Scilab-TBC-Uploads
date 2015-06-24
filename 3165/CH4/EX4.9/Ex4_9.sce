//Example 4 . 9
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to Ca l c u l a t e Group Delay and Phase Delay
// y ( n ) =0.25 x ( n )+x ( n􀀀1)+0.25 x ( n􀀀2)
clc ;
//w=po l y ( 0 , "w") ;
syms w;
theeta =-w;
gd= -diff( theeta ,w); //Group Delay
pd=- theeta /w; // Phase Delay
disp (gd , 'GROUP DELAY =' );
disp (pd , 'PHASE DELAY =' );
