//finding tension and inclination
//refer fig. 2.23 (a),(b) and (c)
//Applying Lami's theorem at B
T1=20*sind(50)/sind(180+30-50)  //kN
T2=20*sind(180-30)/sind(180+30-50)  //kN
//now consider equilibrium of forces at point C we get
//T3*sind(theta)=22.4...(1)
//T3*cosd(theta)=11.20...(2)
//from (1) and (2) we get
theta=atand(2)  //degree
//then (1) gives
T3=T2*sind(50)/sind(theta)  //kN
printf("\nThe required values are:-\nT1=%.2f kN\nT2=%.2f kN\nT3=%.2f kN",T1,T2,T3)




