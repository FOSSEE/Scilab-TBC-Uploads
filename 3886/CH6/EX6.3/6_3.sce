//maximum mechanical advantage and maximum efficiency
//Effort
P=150  //N
W=7700  //N
MA=W/P  //mechanical advantage
//If efficiency=60%
eff=0.6
VR=(MA)/(eff)
//When an effort of 250 N raised a load of 13200 N
P1=250  //N
W1=13200  //N
MA1=(W1)/(P1)
eff1=MA1*100/VR  //percent
//assume law of machine as P=m*W+C
//from first case 150=7700*m+C
//from second case 250=13200*m+C
//Solving we get
m=100/5500  
//maximum mechanical advantage
MAmax=1/(m)
//maximum efficiency
Effmax=100/(m*VR)  //percent
printf("\nMechanical advantage=%0.2f\nVelocity ratio=%0.2f\nEfficiency=%0.2f percent\nMaximum mechanical advantage=%0.2f\nMaxumum efficiency=%0.2f percent",MA,VR,eff1,MAmax,Effmax)
