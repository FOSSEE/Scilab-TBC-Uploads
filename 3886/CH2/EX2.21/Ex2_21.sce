//reactions developed at contact surfaces
//Refer fig. 2.26 (a),(b) and (c)
//using geometry
theta=acosd(0.8)  //degree
//consider equilibrium of cylinder 1
//Using equilibrium conditions
RB=800/sind(theta)  //N
RA=RB*cosd(theta)  //N
//consider equilibrium of cylinder 2
//Using equilibrium conditions
RD=((RB*sind(theta))+1200)/cosd(45)  //N
RC=RD*sind(45)+RB*cosd(theta)  //N
printf("\nThe reactions are:-\nRA=%.1f N\nRB=%.1f N\nRC=%.1f N\nRD=%.1f N",RA,RB,RC,RD)

