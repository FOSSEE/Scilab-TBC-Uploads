clear
//Given
I=20                    //A
R=2                     //ohm
n=0.5                       
P=2000                    //W

//Calculation
P1=P/n
V=P1/I
Eb=V-(I*R)

//Result
printf("\n The back e.m.f is %0.3f V \nSupply voltage is %0.3f V",Eb,V)
