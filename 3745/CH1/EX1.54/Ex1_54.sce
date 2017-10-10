// Ex 54 Page 398

clc;clear;close;
// Given
zo=2+%i*2;//ohm
zi=0.5+%i*4;//ohm
Ri=real(zi) ;//ohm
Ro=real(zo) ;//ohm

//at standstill
s=1;//% at standstill
Zo=sqrt(real(zo)**2+imag(zo)**2);//ohm
Zi=sqrt(real(zi)**2+imag(zi)**2);//ohm
ToBYTi=Ro/Ri*(Zi/Zo)**2;//torque ratio
printf("(a) at standstill, To:Ti = %d:1",ToBYTi)

//at s=0.5
s=0.05;//%
Zo=sqrt(real(zo)**2/s**2+imag(zo)**2);//ohm
Zi=sqrt(real(zi)**2/s**2+imag(zi)**2);//ohm
ToBYTi=Ro/Ri*(Zi/Zo)**2;//torque ratio
printf("\n (b) at s=0.05, To:Ti = %.f:10",ToBYTi*10)
