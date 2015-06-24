clc
//initialisation of variables
k= 15 //knots
w= 64 //lbf/ft^3
W= 5 //tonf
l= 6 //ft
U= 6080 //ft/km.hr
//CALCULATIONS
P= (0.5/32.2)*w*(k*U/3600)^2
Ct= (W*2240)/(P*%pi*(l/2)^2)
nf= 2/(1+sqrt(1+Ct))
Pb= (W*k*2240/nf)*6080/(3600*550)
//RESULTS
printf (' theotrical power= %.f h.p',Pb)
