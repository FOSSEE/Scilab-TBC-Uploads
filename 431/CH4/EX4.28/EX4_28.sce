//Calculate starting torque 
//Chapter 4
//Example 4.28
//page 333
clear;
clc; 
disp("Example 4.28")
ph=3;
//rotor copper loss=slip*rotor input
//Tst= starting torque
//Tfl=torque at full load
//Ist/Ifl=r
r=6;
S=0.04
printf(" At slip=0.04")
printf("\nFor direct-on-line starting, (Tst/Tfl)=%f",((r^2*S)));
//phase current in start is (1/sqrt(3)) times the phase current in delta

printf("\nFor direct-on-line starting, (Tst/Tfl)=%f",((r/sqrt(3))^2*S));




