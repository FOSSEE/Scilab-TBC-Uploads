//Determine velocity ratio,mechanical advantage,efficiency,ideal effort,effort lost in friction,ideal load and frictional resistance.
 W=10000  //N
P=500  //N
//distance moved by effort
D=20  //m
d=0.8  //m
//mechanical advantage
MA=W/P
printf("\nMechanical advantage=%0.1d",MA)
//Velocity ratio
VR=D/d
printf("\nVelocity ratio=%0.1d",VR)
//efficiency
e=MA*100/VR  //percent
printf("\nEfficiency=%0.1d percent",e)
//ideal effort
Pi=W/VR  //N
printf("\nIdeal effort=%0.1d N",Pi)
//Effort lost in friction
E=P-Pi  //N
printf("\nEffort lost in friction=%0.1d N",E)
//Ideal load
Wi=P*VR  //N
printf("\nIdeal load=%0.1d N",Wi)
//Frictional resistance
F=Wi-W  //N
printf("\nFrictional resistance=%0.1d N",F)



