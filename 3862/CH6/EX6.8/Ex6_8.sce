clear
//
W = 12000.0  //Load
N1=2.0              //number of movable pulleys in  system 1
N2=2.0              //number of movable  puleys in system 2
VR=2*N1+2*N2              //Velocity Ratio
L=0.05                     //Efficiency loss  in each pulley
Efficiency=0.78
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
