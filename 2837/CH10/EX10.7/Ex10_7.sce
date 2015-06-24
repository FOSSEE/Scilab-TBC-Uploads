clc
clear
//Initialization of variables
disp("From table 1 of keenan and keynes,")
p=70 //psia
x=0.1
p2=198 //psia
//calculations
v1=6.206
v2=0.017
vx=v1-x*(v1-v2)
t2=1400 //F
//results
printf("Final specific volume = %.3f cu ft",vx)
printf("\n Final state is %d psia and %d F",p2,t2)
