//Example 20_3
clc();
clear;
//To find the current through the inductor
f=60           //Units in Hz
l=15*10^-3         //Units in H
xl=2*%pi*f*l         //Units in Ohms
v=40        //Units in V
i=v/xl         //Units in A
printf("The current in the inductor when frequency=60 Hz is I=%.2f A",i)
f=6*10^5           //Units in Hz
l=15*10^-3         //Units in H
xl=2*%pi*f*l         //Units in Ohms
v=40        //Units in V
i=v/xl         //Units in A
printf("\nThe current in the inductor when frequency=6*10^2 Hz is I=%.6f A",i)
