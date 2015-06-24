clc
//initialization of variables
Pi=14 //lb/in^2
T1=70+460 //F
ratio=13
T3=2500+460 //F
cv=0.171
cp=0.23
R=53.3
g=1.4
//calculations
T2=T1*(ratio)^(g-1)
v3ratio=T3/T2
cutoff= (v3ratio-1)/(ratio-1)
v1ratio=ratio/v3ratio
T4=T3*(1/v1ratio)^(g-1)
eta=1- cv*(T4-T1)/(T3-T2)/cp
percent=eta*100
//results
printf("cut off ratio = %.4f",cutoff)
printf("\n T end expansion = %d R",T4)
printf("\n Thermal efficiency = %.1f",percent)
