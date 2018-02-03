clear
D=500.0            //diameter of the wheel
d=200.0            //diameter of axle 

W=5000.0              //effort

VR=(2*D)/(D-d)           //Velocity Ratio
Efficiency=0.6
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
