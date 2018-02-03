//Tension in the string and accelerations of blocks
//refer fig. 15.13 (a),(b) and (c)
//Considering 1500 N block
//2*T+(1500*a)/(9.81)=1500
//Considering 500N block
//T-(2*500*a)/(9.81)=500
//Solving this we get
a=(500*9.81)/(1500+2000)  //m/sec^2
T=(1500-((1500*1.401)/(9.81)))/2  //N
printf("\na=%.3f m/sec^2\nT=%.2f N",a,T)

