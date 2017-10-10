
//To Calculate the Equivalent Capacitance

//Example 31.8

clear;

clc;

C0=40*10^-6;//Capacitance of the first Capacitor

K=4;//Dielectric Constant

C1=K*C0;//Capacitance of the capacitor C0 with the dielectric

C2=40*10^-6;//Capacitance of the second Capacitor

C=C1*C2/(C1+C2);//formula for finding the equivalent capacitor connected in series

printf("Equivalent capacitance of the system= %f uF",C*10^6);
