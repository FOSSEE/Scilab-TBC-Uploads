//defining scattering parameters
S11=0.102-%i*0.281;
S21=0.305+%i*3.486;
S12=0.196-%i*0.03471;
S22=0.2828-%i*0.2828;

Vs=5;
Zs=40;
Zl=73;
Z0=50;

Ts=(Zs-Z0)/(Zs+Z0);
Tl=(Zl-Z0)/(Zl+Z0);
Tin=S11+(S21*S12*Tl)/(1-S22*Tl);
Tout=S22+(S12*S21*Ts)/(1-S11*Ts);

a=S21^2;
b=1-Ts^2;
c=1-Tl^2;

Gt=(c*a*b)/((1-Tl*Tout)^2*(1-S11*Ts)^2);
Gtu=(c*a*b)/((1-Tl*S22)^2*(1-S11*Ts)^2);
Ga=(a*b)/((1-Tout)^2*(1-S11*Ts)^2);
G=(a*c)/((1-Tin)^2*(1-S22*Tl)^2);

d=abs(Gt);

Pin=(Z0*(Vs)^2)/((Zs+Z0)^2*(1-Tin*Ts)^2*2);
pinR=real(Pin);
pinI=imag(Pin);
Pinc=sqrt(pinR^2+pinI^2);
PA=78.1*10^-3;
Pl=PA*d;
disp(Pl,"Power delivered to load in watts");