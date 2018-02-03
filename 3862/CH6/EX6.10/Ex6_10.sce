clear
//
W = 2500.0  //Load
N1=2.0              //number of movable pulleys in  system 1 in figure B
N2=2.0              //number of movable  puleys in system 2 in figure C
VR=2**N1-1+2**N2-1              //Velocity Ratio
Efficiency=0.70
MA=Efficiency*VR         //Mechanical advantage
P = W/MA    //Effort
printf("\n Effort is %0.3f  N",P)
