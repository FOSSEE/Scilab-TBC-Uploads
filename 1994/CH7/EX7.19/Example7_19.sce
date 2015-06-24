//Chapter-7,Example7_19,pg 7-51
I=100*10^-3
Td=0.8*10^-4
dtheta=90*%pi/180//in radians
theta=90//deflection
dM=Td*dtheta/(I^2)
Mo=0.5//original M
M=Mo+dM//total M
//case-1 
Vdc=100
R=Vdc/I
w=2*%pi*50
Z=R+(%i*w*M)
Z=abs(Z)
Vac=R*Vdc/Z
dif=Vdc-Vac//difference between readings
//case-2
Vdc1=50
I1=Vdc1/R
theta1=theta*((I1/I)^2)//theta=kI^2
theta1=theta1*%pi/180//in radians
dM1=Td*theta1/(I^2)
M1=dM1+Mo
Z1=R+(%i*w*M1)
Z1=abs(Z1)
Vac1=R*Vdc1/Z1
dif1=Vdc1-Vac1
printf("difference in readings Vdc=100V\n")
printf("dif=%.2f V\n",dif)
printf("difference in readings Vdc=50V\n")
printf("dif1=%.2f V\n",dif1)
