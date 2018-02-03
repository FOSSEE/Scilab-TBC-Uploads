//determine the resultant
//refer fig. 3.17 (a) and (b)
Rx=-400*cosd(45)-150*cosd(30)  //N  (towards left)
Ry=200+400*sind(45)-150*sind(30)
R=sqrt(Rx^2+Ry^2)  //N
alpha=atand(Ry/Rx)  //degree
//assume that the resultant intersects arm AB at a distance of x from A
//taking moment about A
MA=-400*3*sind(45)-400*0.6*cosd(45)+50+150*6*sind(30)+150*1*cosd(30)  //N-m  (anticlockwise)
x=MA/Ry  //m
printf("The resultant is R=%.1f N as shown in fig.3.17 (a)",R)


