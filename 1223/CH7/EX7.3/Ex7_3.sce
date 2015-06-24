clear;
clc;
//Example 7.3
R1=51.2;
R2=9.6;
Rc=2;
Re=.4;
Rsi=.1;
Vt=0.026;
Cc=1;
Vcc=10;
Vbe=0.7;
b=100;
Rb=8.08;
Icq=1.81;
gm=Icq/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm)
r=b*Vt/Icq;
printf('\ndiffusion resistance=%.2f KOhm\n',r)
x=r+(1+b)*Re;
y=x*R2/(x+R2);
Ri=y*R1/(R1+y);
printf('\ninput resistance=%.3f KOhm\n',Ri)
Ts=(Rsi+Ri)*Cc;
printf('\ntime constant=%.3f ms\',Ts)
Ts=6.87*10^-3;//Sec
fL=1/(2*%pi*Ts);
printf('\ncorner frequency fL=%.3f Hz\n',fL)
Rib=r+(1+b)*Re;
printf('\nRib=%.3f KOhm\n',Rib)
Av=(gm*r*Rc/(Rsi+Ri))*Rb/(Rb+Rib);
printf('\nsmall signal voltage gain=%.2f\n',Av)
