// Ex 73 Page 412

clc;clear;close;
// Given
//i=0.5+0.3*sin(omega*t)-0.2*sin(2*omega*t)
I0=0.5;I1m=0.3;I2m=-0.2;//from above expression
Iav=I0;//A
R=1000;//ohm
L=1/1000;//H

Irms=sqrt(I0**2+(I1m/sqrt(2)**2+(I2m/sqrt(2)**2)));//A
printf("Reading of hot wire instrument = %.3f A",Irms)
VR=Irms*R;//V
printf("\n Reading of electrostatic voltmeter acroos 1000 ohm = %d V",VR)
//vl_dash=L*di/dt=300*cos(w*t)-400*cos(2*w*t)
vl1=300;vl2=4;//V
vl=sqrt((300/sqrt(2))**2+(400/sqrt(2))**2)
printf("\n Reading of electrostatic voltmeter acroos 1 mH inductor = %d V",vl)
