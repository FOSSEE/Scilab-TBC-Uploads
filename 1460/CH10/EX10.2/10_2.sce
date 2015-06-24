clc
//Initialization of variables
P1=30 //lb/in^2
P2=200 //lb/in^2
capacity=3 //tons
//calculations
disp("From the pressure enthalpy chart")
Tt1= -1 //F
st1=1.34
ht1=612
ht2=733
ht3=141
ht4=141
WbyJ=ht2-ht1
Q=ht1-ht3
beta=Q/WbyJ
Qdot=capacity*3.33
wdot=Qdot/Q
Power=wdot*778*WbyJ
Power=Power/550
//results
printf("Coefficient of performance = %.2f",beta)
printf("\n Evarator temperature = %d F",Tt1)
printf("\n Power required = %.2f hp",Power)
