clc
//initialization of variables
disp("From steam tables")
ht1=218.12
ht3=1412.1
st3=1.6571
ht4=1134.6
ht5=925.8
ht6=69.7
//calculations
w=(ht1-ht6)/(ht4-ht6)
WbyJ=ht3-ht4+(1-w)*(ht4-ht5)
W=778*WbyJ
Q=ht3-ht1
eta=WbyJ/Q
//results
printf("Specific work = %d ft-lb/lbm",W)
printf("\n Efficiency = %.3f",eta)
