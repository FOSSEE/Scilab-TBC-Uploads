clear
//Given
V=200                    //V
I=5                      //A
R=8.5                     //ohm 

//Calculation
Eb=V-(I*R)
Pi=V*I
P0=Eb*I
n=(P0*100)/Pi

//Result
printf("\n (i) Back e.m.f of motor is %0.3f  V", Eb)
printf("\n (ii) Power input is %0.3f  W",Pi)
printf("\n (iii) Output power is %0.3f  W",P0)
printf("\n (iv) Efficiency of motor is %0.3f  percentage",n)
