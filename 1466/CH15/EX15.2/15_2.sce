clc
//initialisation of variables
clear
kl=0.375
kd=0.023
cp=0.3
c=4//ft
l=20//ft
ANG=4//degree
v1=150//mph
w=0.08//lb
g=32.2//ft/sec^2
//CALCULATIONS
A=c*l
V=v1*88/60
L=kl*A*w*V*V/g
D=kd*A*w*V*V/g
hp=D*V/550
p=0.3*ANG
//RESULTS
printf ('A = %.f ft^2',A)
printf ('\n V = %.f ft/sec',V)
printf ('\n L = %.f Lb',L-7)
printf ('\n D = %.f Lb',D)
printf ('\n h.p = %.1f ',hp)
printf ('\n position of Cp = %.1f ft from leading edge',p)
