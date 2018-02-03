//Tension in horizontal rope
//Refer fig. 3.27 (a),(b)&(c)
//Considering equilibrium of the entire system
RB=500/2  //N
RA=RB  //N  (symmetry)
R1=500/(2*cosd(60))  //N
R2=R1  //N
//Taking moment about C
T=((500*0.866)+(250*1.2*0.5))/(1.8*sind(60))  //N
printf("The tension is:-\nT=%.1f N",T)
