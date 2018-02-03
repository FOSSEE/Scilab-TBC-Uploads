//1 m radius wheel
//refer fig. 22.4(a),(b),(c),(d),(e) and (f)
vA=1*5  //m/sec
aA=1*4  //m/sec^2
vBA=1*5  //m/sec
vB=vA+vBA  //m/sec
aBA=1*4  //m/sec^2
an=5^2  //m/sec^2
aB=sqrt((8^2)+(25^2))  //m/sec^2
theta=atand(25/8)  //degree
//Consider rotation of point D
vDx=5+3*sind(60)  //m/sec
vDy=3*cosd(60)  //m/sec
vD=7.745  //m/sec
//inclination to horizontal
theta2=atand(1.5/7.598)  //degree
vDA=0.6*5  //m/sec^2
aD=sqrt((14.190^2)+(1.422^2))  //m/sec^2
theta3=atand(14.190/1.422)  //degree
printf("\nAt B\naB=%.3f m/sec^2\ntheta=%.2f degree\nvB=%.3f m/sec\nAt D\nvD=%.3f m/sec^2\ntheta2=%.2f degree\naD=%.3f m/sec^2\ntheta3=%.2f degree",aB,theta,vB,vD,theta2,aD,theta3)
