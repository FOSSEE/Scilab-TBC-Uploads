//Determine magnitude,direction and point of application
//refer fig.3.15(a)&(b)
Rx=500*cosd(60)-700  //N (towards left)
Ry=-500*sind(60)-1000-1200  //N (Downwards)
R=sqrt((Rx^2)+(Ry^2))  //N
alpha=atand(-Ry/Rx)  //degree
//taking moment about O
MO=-500*300*sind(60)-1000*150+1200*150*cosd(60)-700*300*sind(60)
//let point of application of resultant be at a distance of x from point O along the horizontal then
x=MO/Ry  //mm
printf("The Resultant is R=%.1f N as shown in fig.3.15",R)
