//Reactions developed in cantilever beam
//Refer fig. 3.44 (a)&(b)
//assumptions are made as shown in fig. 3.44 (a)&(b)
//applying equilibrium conditions
VA=15+(10*2)+(20*sind(60))  //kN
HA=20*cosd(60)  //kN
//Taking moment about A
MA=10*2*1+20*2*sind(60)+15*3  //kN-m
printf("Required values:-\nVA=%.2f kN\nHA=%.2f kN\nMA=%.2f kN-m",VA,HA,MA)
