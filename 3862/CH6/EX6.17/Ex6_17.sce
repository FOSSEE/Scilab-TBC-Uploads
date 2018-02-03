clear
d=200.0  //Diameter of the load drum
R = 1200.0   // Length of lever arm
T1 = 10.0  //Number of teeth on pinion,
T2 = 100.0   //Number of teeth on spur wheel
VR=R*T2/(d*T1)*2.0       //Velocity Ratio
printf("\n Velocity Ratio is  %0.3f",VR)
W1 = 3000.0  //Load 1
P1= 100.0    //Effort1

W2 = 9000.0  //Load 2
P2= 160.0    //Effort2

//law of machine is given by P=mW+C
m=(P2-P1)/(W2-W1)
C=P2-m*W2
printf("\n Law of machine is P= %0.3f W  + %0.3f ",m,C)
MA=W1/P1         //Mechanical advantage
Efficiency=MA/VR*100.0
printf("\n Efficiency for first case %0.3f percentage",Efficiency)
MA=W2/P2         //Mechanical advantage
Efficiency=MA/VR*100.0

printf("\n Efficiency for second case %0.3f percentage",Efficiency)
