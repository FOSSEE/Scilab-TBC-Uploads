clear
//Given
f=50                     //Hz
L=2 
Ev=12                  //V
L1=6

//Calculation
//
Xl=2*%pi*f*L
Iv=Ev/Xl
Xl1=2*%pi*f*L1
Iv1=Ev/Xl1

//Result
printf("\n Current flows when the inductance is changed to 6 H %0.4f  A",Iv1)
