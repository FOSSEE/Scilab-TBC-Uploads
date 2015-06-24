clc
//initialisation
dq=540000
dv=1.676
T1=373//k
T2=423//k
p1=1//pa
//CALCULATIONS
dt=T2-T1
dp=(dt*dq*4.2)/(dv*T1)
p2=p1+(dp/10^5)
//results
printf(' \n required pressure= % 1f pa',p2)
