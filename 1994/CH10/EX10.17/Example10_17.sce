//Chapter-10,Example10_17,pg10_54
R2=0.4
X2=4
//Tm=k*(E2^2)/(2*X2)
//Tfl=Tm/2.5
//Tfl=k*(E2^2)/20
//Tst=k*(E2^2)*R2/((R2^2)+(X2^2))
//E2=E2/sqrt(3)
T=20*R2/(3*(((R2^2)+(X2^2))))
printf("ratio of starting torque to full load torque\n")
printf("T=%.3f ",T)
