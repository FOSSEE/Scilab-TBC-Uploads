clc
h0 = 4.05 // thickness of plate in mm 
h1 = 3.55 // mm
D = 500 // rolled diameter in mm
r = D/2 // rolled radius in mm
mu = 0.04 // coefficient of friction
sigma = 210 // N/mm^2
delta_h = h0-h1 // mm
p = 2*sigma/sqrt(3) // N/mm^2
alpha = acos(1-(delta_h/D)) // angle of contact
Ho = 2*sqrt(r/h1)*atan(sqrt(r/h1)*alpha)
Hn1 = (Ho - (log(h0/h1))/mu)/2
theta = sqrt(h1/r)*tan(sqrt(h1/r)*(Hn1/2)) // radians
hn = h1 + 2*r*(1-cos(theta)) // mm
pn1 = p*hn*exp(mu*Hn1)/h1 // roll pressure in N/mm^2
// b) roll pressure when coefficient of friction is 0.4
mu2 = 0.4 // coefficient of friction
Hn2 = (Ho - (log(h0/h1))/mu2)/2
theta = sqrt(h1/r)*tan(sqrt(h1/r)*(Hn2/2)) // radians
hn2 = h1 + r*theta^2 // mm
pn2 = (p*hn2*exp(mu2*Hn2))/h1 // roll pressure in N/mm^2
// c) if tension is applied of 35 N/mm^2
sigma_f = 35 // front tension in N/mm^2
pn3 = (p-sigma_f)*hn*exp(mu*Hn1)/h1 // roll ressure in N/mm^2
printf("\n (a) Roll pressure at enter and exit = %0.1f N/mm^2\n    Roll pressure at neutral plane = %0.2f N/mm^2" ,p , pn1)
printf("\n (b) Roll pressure at neutral point when co-efficient of friction is 0.40 = %0.2f N/mm^2" , pn2)
printf("\n (c) Roll pressure when 35 N/mm^2 tension is applied at neutral point = %0.2f N/mm^2" , pn3)
// 'Answers vary due to round off error'

