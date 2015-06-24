clc
disp("Example 6.26")
printf("\n")
disp("calculate the output voltage for a given input voltages")
printf("given")
disp("input voltages=0.2,0.5sin314t,-0.4")
Rf=200*10^3
R1=20*10^3
Af=(-Rf)/R1// calculate open loop gain
t=%pi/(2*314)//intialise t value
Vi=[0.2,0.5*(sin(314*t)),-0.4]
Vo=Af*Vi//calculate output voltage
printf("Output voltages are=\n%f volt,\n%f volt,\n%f volt",Vo)



