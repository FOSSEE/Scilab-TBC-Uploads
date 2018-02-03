//determine tension and inclination
//Refer fig. 2.24 (a),(b) and (c)
//consider equilibrium at point B,we get
//T2*sind(theta)=T1*sind(30)...(1)
//T2*cosd(theta)=T1*sind(30)-20...(2)
//consider equilibrium at point C,we get
//T2*sind(theta)=T3*sind(60)...(3)
//T2*cosd(theta)=-T3*cosd(60)+25...(4)
//solving (1) and (3) we get
//T1=T3*sqrt(3)...(5)
//solving (2) and (4) and substituting (5) we get
T3=45/2  //kN
T1=T3*sqrt(3)  //kN
//then (1)/(2) gives
theta=atand(1.416)  //degree
T2=19.48/sind(theta)  //kN
printf("\nThe required values are:-\nT1=%.2f kN\nT2=%.2f kN\nT3=%.2f kN\ntheta=%.2f degree",T1,T2,T3,theta)




