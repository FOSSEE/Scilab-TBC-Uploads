//minimum weight W to prevent downward motion of 1000N block
mu1=0.2
mu2=0.3
//Refer fig. 5.20
alpha=atand(3/4)  //degree
//considering equilibrium of block W
//N1=W*cosd(alpha)
//F1=mu2*N1
//T1=0.84*W
theta=180  //degree
//Friction equation of rope gives
//T2=T1*%e^(mu2*theta)
//solving
//T2=2.156*W
//Consider equilibrium of 1000 N block
//N2-N1=800
//N2=0.8*W+800
//F2=0.3*N2
//F1+F2+T2-1000*sind(alpha)=0
//solving we get
W=(1000*sind(alpha)-240)/(0.24+0.24+2.156)  //N
printf("\nRequired force is W=%0.2f N",W)



