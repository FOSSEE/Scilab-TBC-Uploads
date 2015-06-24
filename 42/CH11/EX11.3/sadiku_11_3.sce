clear;
clc;
format('v',6);
w=10^6,B=1,a=8,Vg=10;
Zo=60+40*%i,Zg=40,Zl=20+50*%i;
a=(a/8.686);;//Since 1Np=8.686 dB
Y=a+B*%i;
Yl=2*Y;
h=tanh(Yl);
Zin=Zo*(Zl+Zo*tanh(Yl))/(Zo+Zl*tanh(Yl));
disp(Zin,'The input impdence =');
Io=Vg/(Zin+Zg);//at  z=0
disp(Io*1000,'Sending end current in mA =');
Vo=Zin*Io;
Vop =(Vo+Zo*Io)/2;
Vom =(Vo-Zo*Io)/2;
Im= ((Vop * %e^-Y)/Zo)- ((Vom * %e^Y)/Zo);
disp(Im*1000, 'Current at middle line in mA= ');
