clc
Do = 250 // diameter in mm
ho = 250 // hieght in mm
delta_h = 100 // mm
h = 150 // mm
sigma0 = 55 // N/mm^2
d = Do*sqrt(ho/(ho-delta_h)) // diameter in mm 
mu = 0.42 // coefficient of friction
R = 162.5 // mm
pa = sigma0/2*(h/(mu*R))^2*(%e^(2*mu*R/h)-2*mu*R/h-1) // N/mm^2
p = pa*%pi*(R)^2 // force in kN
printf("\n Force = %d kN",p/1000)

