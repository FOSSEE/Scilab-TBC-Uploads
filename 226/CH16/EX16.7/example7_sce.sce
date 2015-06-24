//chapter 16
//example 16.7
//page 689
printf("\n")
printf("given")
Vo=14;Vr3=.5;Ib=500*10^-9;f=1*10^3;
disp("square wave generator")
Vcc=Vo+1
UTP=Vr3;LTP=UTP;
I2=100*Ib;
R3=Vr3/I2
R2=(Vo-Vr3)/I2
t=1/(2*f)
V=UTP-(-LTP)
C1=.1*10^-6;
I1=(C1*V)/t
R1=Vo/I1