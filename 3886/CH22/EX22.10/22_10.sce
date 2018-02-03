//rotating crank
//refer fig. 22.16 (a),(b),(c),(d),(e),(f),(g),(h) and (i)
//from sine rule
theta=asind((80*sind(60))/(200))  //degree
//angular velocity of crank
omega=(2*%pi*1800)/(60)  //rad/sec
vB=0.08*omega  //m/sec
//it is at right angles to BC
aB=(15.0796^2/0.8)  //m/sec^2
vA=15.8436  //m/sec
aB=2842.4292  //making 60 degree with horizontal
alpha=13120.457  //rad/sec^2
aAB=0.2*alpha
aA=512.2027  //m/sec^2
aX=1118.2109  //m/sec^2
aY=-1174.862  //m/sec^2  downward
//Consider dynamic equilibrium of piston A
HA=(4000)-((50*512.2027)/(9.81))  //kN The answer provided in the textbook is wrong
//Taking moment about B
vA=813.95  //N
vB=2001.57  //N
HB=2598.51  //N
printf("\nHA=%.2f kN\nHB=%.2f N\nvA=%.2f N\nvB=%.2f N",HA,HB,vA,vB)

