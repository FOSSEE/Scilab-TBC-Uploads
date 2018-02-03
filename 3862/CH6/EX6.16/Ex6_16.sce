clear
//
p1=5.0   //Pitch of smaller screw
p2=10.0    //Pitch of larger screw
R=500.0     //Lever arm length from centre of screw
W=15000.0  //Load
P=185.0    //Effort
VR=2*3.14*R/(p2-p1)       //Velocity Ratio
MA=W/P         //Mechanical advantage
Efficiency=MA/VR*100.0

printf("\n Efficiency %0.3f percentage",Efficiency)
