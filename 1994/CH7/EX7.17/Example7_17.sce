//Chapter-7,Example7_17,pg 7-50
K=5.73*10^-6
I=20
theta=110*(%pi/180)//full scale deflection
dtheta=theta//change in theta
L=4*10^-6
dm=(theta*K/(I^2))*dtheta//change in inductance
Lf=L+dm
printf("final inductance\n")
printf("Lf=%.8f H",Lf)
