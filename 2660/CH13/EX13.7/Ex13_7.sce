clc
RA = 0.30
d = 12 // diameter in mm
alpha = 6  // angle of contact in degree
alpha = 6*%pi/180 // angle of contact in radian
mu = 0.10 // coefficient of friction
sigma_0 = 240  // N/mm^2
B = mu*cotg(alpha)
x = 1 - RA
sigma_d  = (sigma_0*(1+B)*(1-(x)^B))/B // N/mm^2
r1  = sqrt(x)*(d/2) // mm
l = sigma_d*%pi*(r1)^2 // load in kN
ita = 98 // efficiency
ita = ita/100
s = 2.3 // drawing speed in m/s
P = (l*s)/ita // kW
printf("\n Drawing load = %0.2f kN\n Power of motor = %0.2f kW" , l/1000 ,P/1000 )
// 'Answers vary due to round off error'
