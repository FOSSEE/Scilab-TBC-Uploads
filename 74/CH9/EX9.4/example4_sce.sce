//chapter9
//example9.4
//page327
R1=12*10^3;Rf=7*10^3;R2=33*10^3;R3=33*10^3;R=33*10^3;
C3=.002*10^-6;C2=.002*10^-6;C=.002*10^-6;
fc=1/2*3.14*sqrt(R2*R3*C2*C3);
disp(fc)//cut off frequency
Af=1+(Rf/R1);//passband voltage gain(Avf)
disp(Af)