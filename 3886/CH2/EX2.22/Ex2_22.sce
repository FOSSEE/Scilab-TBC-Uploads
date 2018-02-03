//determine the reactions developed at contact points
//refer fig. 2.27 (a),(b) and (c)
//considering the equilibrium conditions of cylinders we have
RB=600  //N
alpha=atand(450/150)  //degree
RD=RB/sind(alpha)  //N
RC=RD*cosd(alpha)  //N
RA=RC  //N
printf("\nThe reactions are:-\nRA=%.1f N\nRB=%.1f N\nRC=%.1f N\nRD=%.1f N",RA,RB,RC,RD)
//The answers vary due to round off error

