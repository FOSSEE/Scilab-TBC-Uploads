clc
sigma_0 = 240 // N/mm^2
d1 = 5 // initial wire diameter in mm
d0 = 5.5 // final wire diameter in mm
x = d1/d0 // mm
alpha = 8 // angle of contact
alpha = alpha*%pi/180
mu = 0.1 // coefficient of friction
B = mu*cotg(alpha) 
sigma_d  = (sigma_0*(1+B)*(1-(x)^(2*B)))/B // N/mm^2
l = 3 // die land in mm
mu = 0.1 // coefficient of friction
r1 = d1/2 // mm
sigma_t = sigma_0 - (sigma_0 - sigma_d)/exp((2*mu*l)/r1) // N/mm^2
dl = sigma_t*%pi*(r1)^2 // drawing load in N
printf("\n Total drawing load = %0.1f N" , dl)
// Answers vary due to round off error

