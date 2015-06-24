//Ex9_5 Pg-475
clc

Aol= 88 //open loop gain in db
R1=2.7*10^(3) //resistor R1 in ohm
R2=68*10^(3) //resistor R2 in ohm

Beta=R1/(R1+R2) //Feedback fraction
printf("Feedback fraction = %.3f \n",Beta)

Acl=1/Beta //ideal closed loop gain
printf(" Ideal closed loop gain = %.2f \n",Acl)

Aol=10^(88/20) //open loop gain
Acl=Aol/(1+Beta*Aol) //exact closed loop voltage gain
printf(" Exact closed loop voltage gain = %.2f",Acl)
