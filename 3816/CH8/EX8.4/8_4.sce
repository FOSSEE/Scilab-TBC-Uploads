clc;
clear;
V=3.3;
f=50;
P=10;
S=0.03;
I=4;//Magnetizing current
Lc=30;//core loss
Zsl=0.18+(1.6*%i);//stator leakage impedance
Zrl=0.4+(1.6*%i);//Rotor stan still leakage impedance
W=27*10^2;
Vph=1.9;//Rated phase voltage
Ibsc=W/(3*Vph);//Bus bar short circuit current level
Zs1=(Vph/Ibsc)*%i;//The effective system impedance 
disp('When the machines running at slip 0.03:')
Z1=((real(Zsl)+(real(Zrl)/S))+(imag(Zsl)+imag(Zrl))*%i);
disp(Z1,'The total impedance is:')
I2o=1900/Z1;
I2=real(I2o);
disp(I2,'I2=')
P2=3*I2^2*((real(Zrl))/S);
disp(P2,'P2=')
Pm=P2*(1-S);
disp(Pm,'Pm=')
Me=P2/62.8;
disp(Me,'Me=')
Io=(P/Vph)-(40*%i);
disp(Io,'Io=')
I1=Io+I2o;
disp(I1,'I1=')
pf1=cosd(-27)
disp(pf1,'Power factor=')
disp('During the starting torque with ON-line switching:')
Z2=(Zrl+Zsl);//The impedance value is increased to 3.65
Z2=3.65;
disp(Z2,'Z2=')
I2=(Vph*10^3)/Z2;
disp(I2,'I2=')
Ms=3*I2^2*(real(Zrl)/62.8);
disp(Ms,'Ms=')
