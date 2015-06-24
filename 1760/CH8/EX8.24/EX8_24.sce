                     //EXAMPLE 8-24    PG NO-541-542
Avf=1.56
Vo=2.262*10^-3;
R=15*10^3;
F=0.707;
C=0.002*10^-6;
Fc=1/(2*%pi*R*C);
disp('ii) Cut of Frequency (Fc) is    =  '+string (Fc) +'  Hz ')
Vo1=F*Vo;
A=20*log(1.56);
disp('ii) Out Put Voltage (Vo1) is    =  '+string (Vo1) +'  V ')
