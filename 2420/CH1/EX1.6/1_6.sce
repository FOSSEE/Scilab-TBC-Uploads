clc
clear
//Initialization of variables
g=32.2 //ft/s^2
p1=100 //psig
p2=29.0 //in of Hg
//calculations
BP=p2*0.491
AP=BP+p1
//results
printf("Absolute pressure = %.2f psia",AP)
