clear
//Given
P=60                   //W
Ev=100.0                     //V
Ev1=220                        //v
f=50                           //Hz

//Calculation
Iv=P/Ev
Vr=Ev1-Ev
R=Vr/Iv

Vl=sqrt(Ev1**2-Ev**2)
Xl=Vl/Iv
L=Xl/(2*%pi*f)

//Result
printf("\n (i) The value of non inductive resistance is %0.3f  ohm", R)
printf("\n (ii) Pure inductance is %0.2f  H",L)
