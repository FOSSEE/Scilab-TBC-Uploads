//Double purchase crab
T1=15
T2=45
T3=20
T4=40
R=400  //mm
r=150/2  //mm
VR=(R*T2*T4)/(r*T1*T3)
eta=0.40
MA=eta*VR
W=12.8*250  //N
printf("Applied load lifts a load of W=%.2f N",W)
