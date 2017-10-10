//Example 4.24
close;
clc;

E=3;                  //in volts
Rm=100;               //In ohms
Rh=2000;              //In ohms
Im=1*10^-3;           //in amperes

//Calculation of R2
R2=Im*Rm*Rh/(E-Im*Rh);

//Calculation of R1
R1=Rh-Rm*R2/(R2+Rm);

//Value of R2 when battery is 2.7 V
E1=2.7;                //in volts 
R2_1=Im*Rm*Rh/(E1-Im*Rh);

//Value of R2 when battery is 3.1 V
E2=3.1;                //in volts 
R2_2=Im*Rm*Rh/(E2-Im*Rh);

printf('\nValue of R2 = %.2f ohm\n',R2)
printf('\nValue of R1 = %.2f ohm\n',R1)
printf('\nValue of R2 when battery is 2.7 V = %.2f ohm\n',R2_1)
printf('\nValue of R2 when battery is 3.1 V = %.2f ohm\n',R2_2)