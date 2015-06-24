// Calculation of upsetting force
clc
d1 = 200 // diameter in mm
h1 = 125 // height in mm
h2 = 50 // height in mm
K = 760 // in MPa
n = 0.19 
mu = 0.2 // coefficient of friction
printf("\n Example 6.1")
epsilon1 = log(h1/h2)
Yf = K*epsilon1^n
v = %pi/4*d1^2*h1
r2 = sqrt(v/(%pi*h2))

P_av= Yf*(1+(2*mu*r2/(3*h2)))
F = P_av*1e6*%pi*(r2*1e-3)^2
printf("\n Required upsetting force is %.2e N",F)
// Answer in book is 8.32e7N

