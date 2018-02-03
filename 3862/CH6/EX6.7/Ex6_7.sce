clear
//
W = 12000.0  //Load
N=3.0              //number of movable pulleys
VR=2*N              //Velocity Ratio
L=0.05                     //Efficiency loss  in each pulley
Efficiency=0.85
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
