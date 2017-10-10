clear
//Given
Vp=220.0                           //V
Is=5                             //A
n=20

//Calculation
Vs=Vp*n
Ip=(Vs*Is)/Vp
P=Vs*Is

//Result
printf("\n (i) Voltage across secondary is %0.3f  V",Vs)
printf("\n (ii) The current in primary is %0.3f  A",Ip)
printf("\n (iii) The power output is %0.3f  K W",P*10**-3)
