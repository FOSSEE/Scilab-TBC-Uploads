//Force P for impending motion
//Refer fig. 5.12
//consider equilibrium of block A
//NA*cosd(30)+FA*sind(30)-1500-500=0
//Law of friction gives
NA=2000  //N
FA=NA*tand(15)  //N
C=NA*sind(30)-FA*cosd(30)  //N
//consider equilibrium of block B
NB=2000*cosd(60)+535.90*cosd(30)  //N
FB=NB*tand(15)  //N
P=(392.30)+(2000*sind(60))-(535.90*sind(30))  //N
printf("The required force is P=%0.2f N",P)
 



