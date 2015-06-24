clc
//initialization of varaibles
u1=1111.9 //Btu/lb
P1=170 //psia
v1=2.675 //cu ft/lb
v2=100.9 //cu ft/lb
z1=10 //ft
V1=6000/60 //ft/sec
Q=-1000
u2=914.6 //B/lb
P2=3 //psia
V2=300 //ft/sec
rate=2500  //lb/hr
//calculations
Wx=rate*(u1-u2 + (P1*v1-P2*v2)*144/778 +(V1^2 -V2^2)/(2*32.2*778) +z1/778 +Q/rate)
f=3.92*10^-4
//results
printf("Power output of turbine = %d B/hr",Wx)
printf("\n Power output in hp = %d hp",Wx*f+1)
