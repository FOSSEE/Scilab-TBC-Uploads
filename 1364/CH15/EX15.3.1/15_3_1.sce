clc
//initialisation of variables
f= 0.01
l= 160 //ft
g= 32.2 //ft/sec^2
d1= 10 //in
d2= 4.5 //in
w= 62.3 //lbf/ft^3
v= 60 //rev/min
//CALCULATIONS
hf= (4*f*l/(2*g*(d2/12)))*(d1^2*3*2*%pi/(4*d2^2))^2
h1= (2*hf/3)
r= (d1^2*3/(d2^2*2))
h= (4*f*l*r^2/(2*g*(d2/12)))
W= (%pi*d1^2*1.5*w*10*v/(4*1444))
hp= W*(h1-h)/33000
//RESULTS
printf (' Horse power saved= %.1f h.p',hp)
