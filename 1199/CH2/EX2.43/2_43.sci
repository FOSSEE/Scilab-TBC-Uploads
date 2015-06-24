//2.43
clc;
M=0.95;
w=2*%pi*20;
tc=(1/w)*[(M^2)/(1-M^2)]^0.5;
printf("Time constant=%.2f s",tc)
ph={(%pi/2)-[atan(w*tc)]}*(180/%pi);
printf("\nPhase shift=%.1f deg",ph)
C=(8.85*10^-12*300*10^-6)/(0.125*10^-3);
R=tc*10^-6/C;
printf("\nSeries resistance=%.0f Mohm",R)
M=1/(1+(1/(2*%pi*5*tc)^2))^0.5;
printf("\nAmplitude ratio=%.1f ",M)
Eb=100;
x=0.125*10^-3;
Vs=Eb/x;
printf("\nVoltage sensitivity=%.1f V/m",Vs)


