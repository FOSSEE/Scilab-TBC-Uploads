clear
//Given
R20=20                         //ohm
P=60                            //W
V=120.0                           //Volts
a=5*10**-3

//Calculation
I=P/V
Rt=V/I
t=(((Rt/R20)-1)/a)+R20

//Result
printf("\n Normal working temperature of the lamp is  %0.3f  degree C", t)
