//Find resultant
Rx=60-100*cosd(60)-120*cosd(30)  //kN  (towards left)
Ry=-80+100*sind(60)-120*sind(30)  //kN  (downwards)
R=sqrt(Rx^2+Ry^2)  //kN
alpha=atand(Ry/Rx)  //degree  (shown in fig. 3.13(b))
MA=(80*100*cosd(60)+60*100*sind(60)+120*100*sind(30))  //kN-mm
//intercept on x-axis is
x=MA/Ry  //mm  (as shown in fig. 3.13(a))
printf("R=%.0f kN is the resultant as shown in fig. 3.13 (a)",R)


