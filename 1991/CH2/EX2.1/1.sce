clc
clear
//input from given graph
//calculation of initial accleration
ia=18/4
// calculation of final accleration
fa=-18/10
decel=-(fa)//calculation of deceleration
//calculation of total distance covered
d=0.5*(4*18)+(8*18)+0.5*(10*18)//area under velocity time graph
//output
printf("\n the initial acceleration is %3.3f m/s^2",ia)
printf("\n the final acceleration is %3.3f m/s^2",decel)
printf("\n the distance covered is is %3.3f m",d)
