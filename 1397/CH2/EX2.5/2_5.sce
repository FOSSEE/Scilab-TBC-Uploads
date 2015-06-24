//clc();
clear;
//To determine the capacitance
new=10^6;            //frequency of ultrasonics in Hz
L=1;                 //Inductance in Henry
A=4*(%pi^2)*(new^2)*L;
C=10^12/A;
printf("the capacitance to produce ultrasonic waves is %f PF",C);
