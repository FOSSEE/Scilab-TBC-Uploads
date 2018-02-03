//Two incloned planes
//refer fig.15.10 (a),(b) and (c)
//Let the assembly move down the 60 degree plane by an acceleration a m/sec^2
//Consider the block weighing 100 N
//Applying equilibrium conditions
N1=50  //N
mu=1/3
//From law of friction
F1=mu*N1  //N
//T+((100*a)/(9.81))=69.93
//Now consider 50 N block
N2=50*cosd(30)  //N
//From the law of friction
F2=mu*N2
//((50*a)/(9.81))-T=-39.43
//Solving we get
a=(69.93-39.43)*9.81/(100+50)  //m/sec^2
T=69.93-(100*1.9947/9.81) //N
printf("\na=%.4f m/sec^2\nT=%.2f N",a,T)




