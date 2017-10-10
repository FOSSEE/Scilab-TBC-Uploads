clc;
clear;
V=1000;
Z1=(0.1+(2*%i));
Z2=(0.2+(3.2*%i));
Zl=(2+(1*%i));//load impedance
div=10;//divergence
E1=(V+(0*%i));
E2=V*(cosd(div)-sind(div)*%i);
Zo=(Zl*Z1*Z2)/((Z1*Z2)+(Zl*Z2)+(Z1*Zl));
disp(Zo,'The admittance summation is:')
Isc=(E1/Z1)+(E2/Z2);
disp(Isc,'The short circuit currenrt is:')
V1=Isc*Zo;
disp(V1,'The common terminal voltage is:')
I1=(E1-V)/Z1;
I2=(E2-V)/Z2;
disp(I2,I1,'The individual load current are:')
P1=155;
P2=60;
Is=(E1-E2)/(Z1+Z2);
disp(Is,'The circulating current is:')

