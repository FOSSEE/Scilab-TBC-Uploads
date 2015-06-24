clc
V=120+%i*160;       //Assigning values to parameters
Z1=12+%i*16;
Z2=10-%i*20;
I1=V/Z1;
I2=V/Z2;
[r,t]=polar(Z1);
kW1=(V*I1*cos(t))/1000;
kVAR1=(V*I1*sin(t))/1000;
kVA1=(V*I1)/1000;
[ro,th]=polar(Z2);
kW2=(V*I2*cos(th))/1000;
kVAR2=(V*I2*sin(th))/1000;
kVA2=(V*I2)/1000;
Zeq=(Z1*Z2)/(Z1+Z2);
[R,T]=polar(Zeq);
pf=cos(T);
disp(polar(kW1),"kW1");
disp(polar(kVAR1),"kVAR1");
disp(polar(kVA1),"kVA1");
disp(polar(kW2),"kW2");
disp(polar(kVAR2),"kVAR2");
disp(polar(kVA2),"kVA2");
disp(pf,"Power factor");