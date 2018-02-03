//determine reactions at A,C and D
//Refer fig. 3.56
//Taking moment about A
RE=(20*3+40*4*sind(45))/3  //kN
HA=40*cosd(45)  //kN
VA=20+40*sind(45)-RE  //kN  (Downwards)
//Taking moment about C
RD=((20*sind(60))-(10)+(57.71*2))/3  //kN
HC=20*cosd(60)  //kN
VC=20*sind(60)+RE-RD  //kN
printf("Required Values are:-\nHA=%.2f kN\nVA=%.2f kN downward\nRD=%.2f kN\nHC=%.2f kN\nVC=%.2f kN",HA,-VA,RD,HC,VC)







