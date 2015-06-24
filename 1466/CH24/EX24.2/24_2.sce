

clc
//initialisation of variables
A1=0.954*10^-4//ft^2
A2=2.082*10^-4//ft^2
p1=47.9//lb/in^2
T1=180//R
Ma1=1
Ma2=2.28//plotting
g1=1.4
R=53.3
//CALCULATIONS
v1=49*sqrt(T1)
k=(g1-1)/2
T2=T1*(k+Ma1)/(1+(k*Ma2*Ma2))
p2=p1/((T1/T2)^(g1/(g1-1)))
vs2=49*sqrt(T2)
v2=Ma2*vs2
W=144*p1*A1*v1/(R*T1)
//RESULTS
printf ('W = %.3f Lb/sec',W)
