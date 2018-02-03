//Determine force P
//refer fig.5.21
//From FBD
theta=250*%pi/180  //radians
r=250  //mm
mu=0.3
//from rope friction equation
//T2=T1*%e^(mu*theta)
//also (T2-T2)*r=M
//solving we get
T1=(300*1000)/(250*(3.7025-1))  //N
T2=3.7025*T1  //N
//Consider the equilibrium of lever arm,
P=(T2*50)/300  //N
printf("\n The required force is P=%0.1f N",P)


