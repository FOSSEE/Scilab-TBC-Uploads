clear
//Given
Ev=120.0
P=1000                        //W
Ev1=240

//Calculation
Iv=P/Ev
I0=sqrt(2)*Iv
R=Ev/Iv
P=Ev1**2/R

//Result
printf("\n Resistance is %0.3f ohm \nPeak current is %0.3f W",R,P)
