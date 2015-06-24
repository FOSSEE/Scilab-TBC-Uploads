clear;
clc;
format('v',6);
Zl=100+150*%i;
Zo=75;
zl=Zl/Zo;
T=(Zl-Zo)/(Zl+Zo);
disp(T,'T =');
s=(1+abs(T))/(1-abs(T));
disp(s,'s =')
format('v',5);
Yl=1/Zl;
disp(Yl*1000,'Load admittance in mS');
B=2*%pi,l=.4;
Zin=Zo*(Zl+Zo*tan(B*l)*%i)/(Zo+Zl*tan(B*l)*%i);
format('v',6);
disp(Zin,'Zin at .4 l from load')//for .4l
B=2*%pi,l=.6;
Zin=Zo*(Zl+Zo*tan(B*l)*%i)/(Zo+Zl*tan(B*l)*%i);
format('v',6);
disp(Zin,'Zin at .6 l from load')//for .6l


