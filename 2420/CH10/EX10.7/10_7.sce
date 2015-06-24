clc
clear
//Initialization of variables
p1=14.7 //psia
t1=60 //F
p2=60 //psia
t2=440 //F
m=10 //lb/sec
//calculations
disp("From mollier charts,")
h2=216.3 //Btu/lb
h1=124.3 //Btu/lb
W21=h2-h1
power=W21*m
hp=power*3600/2545
cp=0.237
W212=cp*(t2-t1)
power2=W212*m
hp2=power2*3600/2545
//results
printf("Power required = %d hp",hp)
printf("\n Power required = %d hp",hp2)
printf("\n Work done = %.1f Btu/lb",W212)
