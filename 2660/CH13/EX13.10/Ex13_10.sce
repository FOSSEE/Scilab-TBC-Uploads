clc
sigma_0 = 250 // N/mm^2
d1 = 5 // initial wire diameter in mm
d0 = 15 // final wire diameter in mm 
r0 = d0/2
r1 = d1/2
x = (r0/r1)^2 // mm
alpha = 45 // angle of contact
alpha = alpha*%pi/180
mu = 0.1 // coefficient of friction
B = mu*cotg(alpha) 
sigma_x0  = (sigma_0*(1+B)*(1-(x)^B))/B // N/mm^2
sigma_x0 = -sigma_x0
l = 37.5 // length 0f billet in mm
tau1 = sigma_0/2 // Mpa
Pe = sigma_x0 + (4*tau1*l)/d0 // extrusion pressure in Mpa
el = Pe*%pi*(r0)^2 // extrusion load in MN
printf("\n Extrusion load = %d MN" , el/10000)

