//EX6_3 PG-6.33
clc
Rt=5;//resistance in kohm
Ct=0.1;//capacitance in micro farad
n=0.58;//standoff ratio
T=Rt*Ct*log(1/(1-n));//time period in seconds
fo=1/T;//frequency of oscillations
fo=fo;
printf("\n Therefore frequency of oscillation is %.3f kHz \n",fo)
