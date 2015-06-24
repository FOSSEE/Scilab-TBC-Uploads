clc
//initialisation of variables
w= 1000 //rev
r= 1 //ft
Q= 2000 //ft^3
wa= 0.07
w1= 62.3 //lbf/ft^3
//CALCULATIONS
u= w*r*2*%pi/60
q= Q/(60*%pi)
H= (u^2/g)*(1+(q/u)*cotd(35))
l= H/4
Ha= H-l
Hv= (u^2/(2*g))*(1+(q/u)*cotd(35))^2
Hva= Hv-78
Hpa= Ha-145
p= wa*Hpa*12/w1
//RESULTS
printf (' gain in pressure= %.2f in of water',p)
