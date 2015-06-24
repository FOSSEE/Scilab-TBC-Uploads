//chapter 14
//example 14.14
//page 630
printf("\n")
printf("given")
Vcc=15;Vsat=Vcc;R2=150*10^3;Vf=.7;R1=27*10^3;R3=120*10^3;
I2=(Vsat-Vf)/R2
UTP=I2*R1
disp(" LTP calculation including Vf")
I3=(Vsat-Vf)/R3
LTP=-I3*R1