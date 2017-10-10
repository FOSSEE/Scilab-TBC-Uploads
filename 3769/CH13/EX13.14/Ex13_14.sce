clear
//Given
Ev=200                   //V
I0=0.9                   //A
f=50                      //Hz

//Calculation
//
E0=sqrt(2)*Ev
Xl=E0/I0
L=Xl/(2*%pi*f)

//Result
printf("\n The value of inductance is %0.0f  H",L)
