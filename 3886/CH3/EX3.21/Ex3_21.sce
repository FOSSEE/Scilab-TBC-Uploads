//determine magnitude and direction  of support reactions
//Refer fig. 3.48 (a)&(b)
//Taking moment about A
RB=((60*1*sind(60))+(80*3*sind(75))+(50*5.5*sind(60)))/(6*sind(60))  //kN  (At 60 degree to the horizontal)
HA=(-60*cosd(60))+(80*cosd(75))-(50*cosd(60))+(100.45*cosd(60))  //kN
VA=(-100.45*sind(60))+(60*sind(60))+(80*sind(75))+(50*sind(60))  //kN
RA=sqrt((HA^2)+(VA^2))  //kN
alphaA=atand(VA/HA)  //Degree
printf("The reactions are:-\nRA=%.2f kN \nRB=%.2f kN \nAs shown in fig. 3.48",RA,RB)
