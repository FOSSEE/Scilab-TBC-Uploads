clc
//initialization of variables
P1=14.7 //lb/in^2
T1=60+460 //R
P2=100 //lb/in^2
T2=470+460 //R
cv=0.171 //B/lbm F
cp=0.24//B/lbm F
//calculations
WbyJ=cv*(T1-T2)
W=778*WbyJ
ds=cp*log(T2/T1) - 53.3*log(P2/P1) /778
//results
printf("Work done = %d ft-lb/lbm",W)
printf("\n Change in entropy = %.4f B/lbm R",ds)
