clear
//
W1 = 2400.0  //Load 1
P1= 150.0    //Effort1

W2 = 3000.0  //Load 2
P2= 180.0    //Effort2
P3= 200.0    //Effort3
//law of machine is given by P=mW+C
m=(P2-P1)/(W2-W1)
C=P2-m*W2
printf("\n Law of machine is P= %0.3f W  + %0.3f ",m,C)
W3=(P3-C)/m                   //Load 2
printf("\n Load is  %0.3f  N",W3)
MA=W3/P3         //Mechanical advantage
VR=30.0      //Velocity Ratio
Efficiency=MA/VR*100
Pi =W3/VR        //Ideal effort
printf("\n Ideal effort is %0.3f  N",Pi)

efl=P3-Pi            //Effort lost in friction

printf("\n Effort lost in friction %0.3f",efl)
printf("\n Efficiency %0.3f",Efficiency)
printf("\n Mechanical advantage-- %0.3f",MA)
