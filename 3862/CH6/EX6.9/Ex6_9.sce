clear
//
W = 1000.0  //Load
N=3.0              //number of pulleys
VR=2**N-1              //Velocity Ratio
P = 180.0    //Effort
MA=W/P        //Mechanical advantage
Efficiency=MA/VR*100
Pi =W/VR        //Ideal effort

efl=P-Pi            //Effort lost in friction
printf("\n Efficiency %0.3f",Efficiency)
printf("\n Effort lost in friction %0.3f",efl)
