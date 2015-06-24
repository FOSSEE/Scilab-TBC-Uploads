//EX3_27 PG-3.60
clc
Il=12e-3;//load current
Es=200;//rms voltage
Rf=0.02;//riplle factor
Esm=sqrt(2)*Es;//peak value of input voltage
Edc=2*Esm/%pi;
Idc=Il;
Rl=Edc/Idc;//load resistance
f=50;//frequency of the supply in Hz
disp(" For a half wave rectifier Ripple factor=1/(2*sqrt(3)*f*C*Rl)")
C=(4*sqrt(3)*f*Rf*Rl)^(-1);//filter capacitor
printf("\n  Therefore minimum value of capacitance required is %.3f microF",C*1e6)
//C=9.619 microF not 9.622 microF



