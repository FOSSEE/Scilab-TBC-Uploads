//EX3_25 Pg-3.60
clc
Es=230;
f=50//frequency
Rf=.005;//ripple factor
Il=0.5;//average load current
Esm=sqrt(2)*Es;//peak value of input voltage
disp(" For a half wave rectifier Ripple factor=(2*sqrt(3)*f*C*Rl)^(-1)")
Edc=Esm/%pi//for half wave rectifier
Rl=Edc/Il;
C=(2*sqrt(3)*f*Rf*Rl)^(-1);//for half wave rectifier
C=C*1e3;
printf("\n  Therefore capacitance required is %.3f mF",C)
