//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_11.sce.
clc;
clear;
R=10;         //resistance in ohms
L=5;          //inductance in henry
V=100;        //supply voltage in volts
t1=2;        //time at which k1 switch opened in seconds
//CASE1
printf("\n (a)")
i=(V*(1-exp(-((R*t1)/L))))/R;
printf("\n  The inductive current at the time k1 is opened=%1.2f A",i)

//CASE2
printf("\n (b)")
v1=V*exp(-((R*t1))/L);
printf("\n  The voltage across the inductor at t=2second=%1.2f V",v1)

//CASE3
printf("\n (c)")
t2=3;     //time in seconds
Imax=(V/R); 
v2=Imax*R*(exp(-((R*t2))/L));
printf("\n  The voltage across the inductor at t=3 second=%1.4f V",v2)
//For v2 calculation ,the answer in the book is wrong

//CASE4
printf("\n (d)")
t3=0;   //initial time in seconds
it=(-R*(-Imax)*exp(-(R*t3)/L))/L;    //rate of decay of inductor current in amphere per seconds
printf("\n  The initial value of rate of decay of inductor current=%d A/s",it)

//CASE5
printf("\n (e)")
Energy=(1/2)*L*Imax^2;
printf("\n  The energy dissipated in the resistor=%d J",Energy)
