clear
D=500.0            //diameter of the wheel
d=200.0            //diameter of axle
tcw=6.0             //thickness of the cord on the wheel
tca=20.0           //thickness of the cord on the axle
W=1200              //effort
ED=D+tcw            //Effective diameter of the wheel
Ed=d+tca            //Effectivediameter of axle
VR=ED/Ed           //Velocity Ratio
Efficiency=0.7
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
