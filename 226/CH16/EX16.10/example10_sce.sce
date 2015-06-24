//chapter 16
//example 16.10
//page 699
printf("\n")
printf("given")
Vcc=9;Vo=3;I1=1*10^-3;f=500;UTP=3;
disp("design the triangular wave")
Vi=Vcc-1
V=Vo-(-Vo)
disp(" I1>>Ibmax for op-amp")
R1=Vi/I1
t=1/(2*f)
C1=(I1*t)/V
disp("schmitt design")
I2=1*10^-3;
R2=UTP/I2
R3=(Vcc-1)/I2