//Determine Resultant
//horizontal direction is assumed as x-axis and vertical as y-axis
Rx=-20*cosd(60)  //kN  (towards left)
Ry=-20-30-20*sind(60)  //kN  (downwards)
R=sqrt(Rx^2+Ry^2)  //kN
alpha=atand(Ry/Rx)  //degree  (as shown in fig. 3.12(b))
//Taking moment about A
MA=20*1.5+30*3+20*6*sind(60)  //kN-m
//x-intercept of the resultant is
x=MA/Ry  //m (shown in fig.)
printf("R=%.2f kN as shown in fig. 3.12(a)",R)
