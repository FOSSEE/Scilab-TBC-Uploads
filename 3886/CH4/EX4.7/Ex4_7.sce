//finding magnitude and nature of forces
//refer fig. 4.14(a)
//considering equilibrium if entire truss
//taking moment about L0
R2=(200*6+200*12+150*18+100*24+100*30)/36  //kN
R1=200+200+150+100+100-R2  //kN
//consider equilibrium of right hand side of section (1)-(1)
theta1=atand(1/6)  //degree
theta2=atand(6/8)  //degree
//taking moment about U4
FL3L4=(-100*6+325*12)/8  //kN  (tension)
//taking moment about L3
FU3U4=456.2  //kN  (compression)
FU4L3=(456.2*cosd(9.46)-412.5)/sind(36.87)  //kN  (tension)
printf("The required forces are:-\nMember     Force\nU3U4=    %.2d kN (Compression)\nL3L4=    %.2d kN (Tension)\nU4L3=    %.2d kN (Tension)",FU3U4,FL3L4,FU4L3)
  














