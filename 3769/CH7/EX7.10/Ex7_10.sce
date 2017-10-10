clear
//Given
E=12                   //V
I=1                     //A
r=0.5                   //ohm

//Calculation
P1=E*I
P2=I**2*r
P=P1-P2

//Result
printf("\n (i) Rate of consumption of chemical energy is %0.3f  W", P1)
printf("\n (ii) Rate Of energy dissipated inside the battery is %0.3f  W",P2)
printf("\n (iv) Rate of energy dissipated in the resistor is %0.3f  W", P)
printf("\n (v) Power output of the source is %0.3f  W",P)
