clc
disp("Example 1.26")
printf("\n")
disp("calculate the diode current across 2 diodes")
//given
V=12
Vd1=0.7
Vd2=0.7
R=10^3
//current
I=(V-(Vd1+Vd2))/R
printf("Diode current =%f Ampere",I)
