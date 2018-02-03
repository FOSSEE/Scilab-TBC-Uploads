clear
//
W = 10000.0  //Load
P = 500.0    //Effort
D = 20.0   //Distance moved by the effort
d = 0.8     //Distance moved by the load
MA=W/P         //Mechanical advantage
VR=D/d      //Velocity Ratio
Efficiency=MA/VR
Pi =W/VR        //Ideal effort
Wi = P*VR        //ideal load
efl=P-Pi            //Effort lost in friction
Fr=Wi-W            //frictional resistance
printf(" Mechanical advantage-- %0.3f",MA)
printf("\n Velocity Ratio %0.3f",VR)
printf("\n Efficiency %0.3f",Efficiency)
printf("\n Ideal Load %0.3f",Wi)
printf("\n Ideal Effort %0.3f",Pi)
printf("\n Effort lost in friction %0.3f",efl)
printf("\n frictional resistance %0.3f",Fr)
