//Calculate the ampere turns for each commutating pole
//Chapter 2
//Example 2.25
//page 135
clear;
clc;
disp("Example 2.25")
P=8;..........................//pole
Z=107;.........................//generator with slots
Ia=1000;.....................//current containing in amperes
Bag=0.32;......................//gap flux density in Wb/m^2
lg=0.012;..........................//interpole air gap in meters
pi=3.14;
Mu=(4*pi*10^-7)
AT=(((Ia*Z)/(2*P))+((Bag*lg)/Mu));
printf("current for each commutating pole=%f",AT)