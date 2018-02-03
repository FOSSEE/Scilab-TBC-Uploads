//Body on an inclined plane
//Refer fig. 15.8 (a),(b) and (c)
//Consider 1200 N block
//applying equilibrium condition
N=1200*cosd(12)  //N
mu=0.2
//From Law of friction
F=mu*N
//applying equilibrium condition 
a=(800-484.25)/(122.32+((800)/(9.81)))  //m/sec^2
//solving for T
T=800-((800*1.549)/(9.81))  //N
//initial velocity=0
t=3  //sec
//distance moved in 3 sec
s=0*3+((1.549*3^2)/(2))  //m
printf("\na=%.3f m/sec^2\nT=%.2f N\ns=%.3f m",a,T,s)



