//tension in the cable and reaction at a point
//refer fig. 3.21 (a),(b)&(c)
//Taking moment about A we get
T=((25*12*cosd(30))+(10*6*cosd(30)))/(12*sind(15))  //kN
//applying equilibrium conditions
HA=T*cosd(15)  //kN
VA=10+25+T*sind(15)  //kN
RA=sqrt(HA^2+VA^2)  //kN
alpha=atand(VA/HA)  //degree
printf("tension T in cable BC is T=%.2f kN.\nRA=%.3f kN\nalpha=%.2f degree",T,RA,alpha) 
