//Ex9_6 Pg-476
clc

Aol=20000 //open loop gain
R1=100 //resistor R1 in ohm
R2=7.5*10^(3) //resistor R2 in ohm
Rin=3*10^(6) //input resistor in ohm
Rcm=500*10^(6) 

Beta=R1/(R1+R2) //Feedback fraction
printf("Feedback fraction = 1\\76 = %.5f \n",Beta)

Req=(Rin*Rcm)/(Rin+Rcm) //equivalent resistance of Rin and Rcm
Zcl=(1+Beta*Aol)*Req //closed loop input impedance (textbook answer is wrong)
printf(" Closed loop input impedance = %.0f Mohm",Zcl*10^-6)
