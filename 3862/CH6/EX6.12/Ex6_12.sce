clear
D=800.0            //diameter of the wheel
d1=250.0            //diameter of axle 1
d2=300.0            //diameter of axle 2

W=20000.0              //effort

VR=(2*D)/(d2-d1)           //Velocity Ratio
Efficiency=0.55
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
