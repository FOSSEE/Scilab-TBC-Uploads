//determine equilibriant
//two 40 kN forces have no moment about the pulley centre hence can be considered acting at pulley centre
//Accordingly
Rx=20*cosd(45)-30*cosd(60)-50*cosd(30)+40*cosd(20)-40*sind(30)  //kN  (towards left)
Ry=-20*sind(45)-20+20-30*sind(60)-50*sind(30)-40*sind(20)-40*cosd(30)  //kN  (Downwards)
R=sqrt(Rx^2+Ry^2)  //kN
alpha=atand(Ry/Rx)  //degree
//Taking moment about A
MA=20*4-20*4+30*6*sind(60)+50*2*sind(30)-50*2*cosd(30)+40*3*cosd(20)-40*3*sind(30)
//assume that the resultant intersects AB at a distance x from A,then
x=MA/Ry  //m
printf("Equilibriant is equal and opposite to resultant.\nR=%.2f kN\nalpha=%.2f degree\nx=%.3f m\nAs shown in fig.3.18 (a)",R,alpha,-x)

