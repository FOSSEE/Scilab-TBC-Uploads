clc
//Initialization of variables
Eab1=0
Eab2=5.87 //mV
T1=150 //F
T2=200 //F
//calculations
Eab= -1.12+ 0.035*T1
pi1=0.035*(T1+460)
pi2=0.035*(T2+460)
//results
printf("Thermocouple reading at %d F = %.2f mv",T1,Eab)
printf("\n Peltier coefficient at %d F = %.1f mv",T1,pi1)
printf("\n Peltier coefficient at %d F = %.1f mv",T2,pi2)
