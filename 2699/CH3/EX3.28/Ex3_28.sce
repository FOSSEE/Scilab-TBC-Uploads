//EX3_28 PG-3.61
clc
Es=230;//rms voltage
f=50;
Il=10e-3;//load current
Rf=.01;//ripple factor
Esm=sqrt(2)*Es;//peak value of input voltage
Edc=2*Esm/%pi;//for full wave
Rl=Edc/Il;
C=(4*sqrt(3)*f*Rf*Rl)^(-1);//for full wave rectifier
C=C*1e6;
printf("\n Therefore capacitance required is %.2f  microF",C)

