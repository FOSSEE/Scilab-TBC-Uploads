// Example 3.1 page no-155
clear
clc

//(1)
Rl=2000
f=50
l=20
V1=0.074
w=2*%pi*f
V=Rl/(3*2*sqrt(w*2))
printf("\n1.One Inductor Filter,\nV = %.3f\n",V1)
//(2)
Idc=1
c=16*10^-6
gam=Idc/(4*sqrt(3)*f*c*Rl)
printf("\n2.Capacitor filter, \nGamma = %.2f\n",gam)

//(3)
gam2=(sqrt(2)/3)*(1/4*l*c*(w^2))
printf("\n3. L Type filter,\nGamma = %.4f",gam2/1000)
