//Example 2 . 1 1
//Program to Pl o t Magni tude and Phase Responce
clc ;
w=-%pi :0.01: %pi ;
H =1/(1 -0.5*( cos (w)-%i* sin (w)));
// c a l u c u l a t i o n o f Phase and Magni tude o f H
[ phase_H ,m]= phasemag (H);
Hm=abs(H);
a= gca ();
subplot (2 ,1 ,1);
y_location =" o r i g i n ";
plot2d (w/%pi ,Hm);
xlabel ( ' Fr equency i n Radians ' );
ylabel ( ' abs (Hm) ' );
title ( 'MAGNITUDE RESPONSE ' );
subplot (2 ,1 ,2);
a= gca ();
x_location =" o r i g i n ";
y_location =" o r i g i n ";
plot2d (w /(2* %pi ),phase_H );
xlabel ( ' Fr equency i n Radians ' );
ylabel ( '<(H) ' );
title ( 'PHASE RESPONSE ' );
