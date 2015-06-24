// To determine the sending end voltage and current , power and power factor. Evaluate A, B , C, D parameters.
clear
clc;
R=.1557*160
GMD=(3.7*6.475*7.4)^(1/3);
Z1=2*(10^-7)*log(560/.978)*160*1000;
XL=63.8;
C=(10^-9)*2*(10^6)*%pi*160*1000/(36*%pi*log(560/.978));
Z=sqrt((.1557^2) + .39875^2)*(cosd(68.67)+ %i*sind(68.67));
jwC=%i*314*1.399*(10^-6)/160;
Zc=sqrt(Z/jwC);
y=sqrt(Z*jwC);
yl=y*160;
A=cosh(yl);
B=Zc*sinh(yl)
C=sinh(yl)/Zc;
Ir=50000/(sqrt(3)*132);
Vs=(A*76.208) +(B*(10^-3)*Ir*(cosd(-36.87)+%i*sind(-36.87)));
VS=152.34;
Is=C*76.208*(10^3) +(A*Ir*(cosd(-36.87)+%i*sind(-36.87)));
Ps=3*abs(Vs)*abs(Is)*cosd(33.96);
pf=cosd(33.96);
Vnl=abs(Vs)/abs(A);
reg=(Vnl-76.208)*100/76.208;
n=50000*.8*100/abs(Ps);
mprintf(" Vs line to line =%.2f kV\n",VS);
disp(Is,"sending end current Is(A)=");//Answer don't match due to difference in rounding off of digits
mprintf("sending end power=%.0f kW\n",Ps);
mprintf("sending end p.f =%.3f\n",pf);
mprintf("percent regulation=%.1f \n",reg);
mprintf("percent efficency=%.1f ",n);
