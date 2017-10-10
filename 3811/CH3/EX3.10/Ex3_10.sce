//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.10
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
f=2;                              //switching frequency of chopper in kilohertz
Vs=80;                           //source voltage in volts
k=.3;                           //duty ratio
R=4;                           //load resistance in ohm
mprintf("\na.To calculate on time and switching period:")
t=1/f;                       //switching period in milli sec
ton=k*t;                    //on time in milli sec
mprintf("\nThe switching period and on time in milli second are %f %f",t,ton)
mprintf("\nTo calculate average voltage across the load:")
Vave=k*Vs;
mprintf("\nThe average voltage across the load is %d volt",Vave)
mprintf("\nc.To calculate average voltage across the load:")
Vdave=(1-k)*Vs;          //obtained by integrating Vs with respect to ton and t
mprintf("\nThe average voltage across the load is %d volt",Vdave)
mprintf("\nd.To calculate average current of the load:")
Iave=Vave/R;
mprintf("\nThe average current of the load is %d ampere",Iave)
mprintf("\ne.To calculate load power:")
P=Vave*Iave;
mprintf("\nThe load power is %d watt",P)
