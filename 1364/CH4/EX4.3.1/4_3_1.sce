clc
//initialisation of variables
za= 0 //ft
zb= 12 //ft
w= 62.3 //lbf/ft^2
pa= 750 //lbf/in^2
p= 700 //lbf/in^2
ua= 3 //ft/sec
g= 32.2 //ft/sec^2
d= 2 //in^2
//CALCULATIONS
ub= 4*ua
Hl= (za-zb)+((pa-p)*144/w)+(ua^2-ub^2)/(2*g)
P= (w*ua*(%pi/4)*Hl*d^2)/(144*550)
//RESULTS
printf (' horse-power expended in over coming losses= %.2f h.p',P)
