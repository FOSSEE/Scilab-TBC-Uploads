//calculating the torque developed
//Chapter 2
//Example 2.10
//page 98
clear;
clc;
disp("Example 2.10")
n=10;             //number of turns in 1 coil
l=0.2;            
d=0.2;          //diameter in metres
B=1;              //uniform magnetic field density in weber per m^2
N=1500;            //speed in rpm
r=(d/2);           //radius in metres
E=(B*l*((2*3.14*N)/60)*r*2*n);
printf("total induced emf=%f V",E)
R=4;                //total resistance in ohms
I=E/R;
printf("\nThe current through the armature coil when connected to the load,I=%f A",I)
T=(E*I)/((2*3.14*N)/60)
printf("\ntorque=%f Nm",T)