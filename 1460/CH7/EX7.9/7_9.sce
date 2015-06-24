clc
//initialization of variables
g=1.4
cv=0.171 //B/lbm 
P1=14.7 //lb/in^2
P2=100  //lb/in^2
T1=60+460 //R
w=1 //lbm
//calculations
Tratio=(P2/P1)^((g-1)/g)
T2=T1*Tratio
WbyJ=cv*(T1-T2)
W=WbyJ*778
//results
printf("Work done = %.1f B/lbm",W)
printf("\n CHange in internal energy = %d ft-lb/lbm",WbyJ)
//The answer in the textbook varies a bit due to rounding of error in textbook
