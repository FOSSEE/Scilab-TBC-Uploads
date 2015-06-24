clc
clear
//Initialization of variables
th=350 //F
tc=150 //F
od1=4.5
id1=4.026
od2=6.5
id2=4.5
k1=32
k2=0.042
//calculations
Q=2*%pi*(th-tc)/(log(od1/id1) /k1 + log(od2/id2) /k2)
r1=log(od1/id1) /k1
rt=log(od1/id1) /k1 + log(od2/id2) /k2
ti=th-r1/rt*(th-tc)
//results
printf("Heat flow = %.1f Btu/hr",Q)
printf("\n Interface temperature = %.2f F",ti)
