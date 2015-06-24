clc
clear
//Initialization of variables
m=100000 //lb/hr
p1=1 //psia
x=0.8
p2=14.7 //psia
t2=300 //F
//calculations
disp("from table A3 and A2")
h2=1192.8 //Btu/lb
hf=69.7 //Btu/lb
hfg=1036.3 //Btu/lb
h1=hf+x*hfg
W=h2-h1
power=m*W
hp=power/2545
//results
printf("Power required = %d hp",hp)
