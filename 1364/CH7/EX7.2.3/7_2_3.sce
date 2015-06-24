clc
//initialisation of variables
cv= 0.97
g= 32.2 //ft/sec^2
H= 100 //ft
F= 477 //lbfsec^2
a= 15 //degrees
d= 62.3 //lb/ft^3
vb= 35.7 //ft/sec
v= 78.3 //ft/sec
//CALCULATIONS
Vj= cv*sqrt(2*g*H)
k= (1/cosd(a))*((F*144*32.2/(d*Vj^2*%pi))-1)
P= d*%pi*Vj*v*vb/(144*32.2*550)
//RESULTS
printf (' ratio of velocity of water = %.2f  ',k)
printf (' \n brake horse-power = %.2f  ',P)
