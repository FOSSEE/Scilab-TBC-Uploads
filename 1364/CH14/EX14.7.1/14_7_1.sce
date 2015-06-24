clc
//initialisation of variables
pe= 126 //ft
ve=16//ft/sec
g= 32.2 //ft/sec^2
w= 62.3 //lbf/ft^3
Q= 64 //ft^3/sec
n= 0.79
vo= 8 //ft/sec
h= 9 //ft
nh= 0.82
//CALCULATIONS
H= pe+(ve^2/(2*g))+13
Ps= H*w*Q*n/550
W= pe+(ve^2/(2*g))+4-((vo^2/(2*g))-h)
W1= nh*H
dh= W-W1
nm= n/nh
e= Ps*((1/nm)-1)
//RESULTS
printf (' Total head= %.f ft',H)
printf (' \n horse power= %.f hp',Ps)
printf (' \n head lost in friction= %.f ft',dh)
printf ('\n horse power lost= %.f h.p',e)
