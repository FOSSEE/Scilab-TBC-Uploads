//Force P required
//refer fig. 7.6
mu=0.3
theta=(250*%pi)/180  //radians
r=250  //mm
T1=(300*10^3)/(250*(%e^mu*theta-1))  //N
T2=(%e^mu*theta)*T1  //N
//Considering equilibrium of lever arm
P=(1644.06*50)/(300)  //N
printf("The required value is P=%.2f N",P)

