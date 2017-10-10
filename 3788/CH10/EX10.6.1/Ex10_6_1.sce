//Example 10.6.1
//Length and gain of Satellite
clc
clear
height=750
theta=10
SEC=theta + 90
re=6378
rs=re + 750
del = asind(re*(sind(SEC)/rs))
Y=180-100-del
Yradian=Y*(%pi/180)

ArcEZ=re*Yradian
Diameter=2*ArcEZ
printf("Length of coverage region is %f km \n",Diameter)

Beamwidth=2*del
Gain=33000/Beamwidth^2
G=10*log10(Gain)
printf("Gain of Satellite Antenna is %f dB",G)
