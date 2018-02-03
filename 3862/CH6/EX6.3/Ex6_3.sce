clear
//
W1 = 7700.0  //Load 1
P1= 150.0    //Effort1
MA=W1/P1         //Mechanical advantage
printf("\n Mechanical advantage-- %0.3f",MA)

Efficiency=0.6
VR=MA/Efficiency        //Velocity Ratio
W2 = 13200.0  //Load 2
P2= 250.0    //Effort2
MA=W2/P2
Efficiency=MA/VR*100
//law of machine is given by P=mW+C
m=(P2-P1)/(W2-W1)


MMA=1/m         //Maximum Mechanical advantage

MaxEfficiency=MMA/VR*100

printf("\n Velocity Ratio %0.3f",VR)
printf("\n Efficiency %0.3f",Efficiency)
printf("\n Maximum Mechanical advantage-- %0.3f",MMA)
printf("\n Maximum Efficiency %0.3f",MaxEfficiency)
