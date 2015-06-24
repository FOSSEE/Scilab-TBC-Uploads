//Find the average values of (a) input voltage and (b) input current.
//Example 10.1 page no 296
clear
clc
V2=12       //load
D=0.8       //duty cycle
V1=V2/D     //V
P0=20      //average power
I1=P0/V1
printf("\n The value of I1=%0.3f  A",I1)
