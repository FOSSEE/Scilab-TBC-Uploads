clc
// Intialization of variables
p1=0 //Pa
p2=0 //Pa
z2=30 //ft
z1=0 //ft
h_L=15 // ft  Head loss
hp=10 //hp
gama=62.4 //lb/ft^3
k1=550 //ft.lb/s/hp  Conversion
// p2/gama + V2^2/2g + z2 = p1/gama + V1^2/2g + z1 + hs - h_L
hs=h_L+z2-z1
Wd=hp*k1
Q=Wd/(gama*hs)
printf('Flow rate = %.2f ft^3/s',Q)
Wd_loss=gama*Q*h_L
Wd_loss=Wd_loss/k1
printf('\n Power loss = %.2f hp',Wd_loss)

