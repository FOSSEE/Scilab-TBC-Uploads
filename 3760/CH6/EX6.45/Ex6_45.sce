clc;
v=400; // rated voltage of motor
m=3; // number of phases
r=2; // ratio of leakage reactance of stator to leakage reactance of rotor
ns=1000; // synchronous speed
n=960; // speed of motor
f=50; // frequency 
// no load test results
Vo=400; // applied voltage
io=7.5; // no load current
pfo=0.135; // power factor
// blocked rotor test
vb=150; // applied voltage
ib=35; // current
pfb=0.44; // power factor
znl=Vo/(io*sqrt(3)); // no load impedance
rnl=znl*pfo; // no load resistance
xnl=sqrt(znl^2-rnl^2); // no load reactance
zbr=vb/(ib*sqrt(3)); // block rotor test impedance
Rbr=zbr*pfb; // block rotor resistance 
xbr=sqrt(zbr^2-Rbr^2); // block rotor reactance
x2=xbr/3; // leakage reactance of rotor
x1=x2*2; // leakage reactance of stator
xm=xnl-x1; // magnetising reactance
r1=Rbr/2; // stator resistance/rotor resistance
V1=v/sqrt(3); // per phase stator voltage
Ve=(V1*xm)/(x1+xm); // thevenin voltage
Re=(r1*xm)/(x1+xm); // thevenin resistance
Xe=(x1*xm)/(x1+xm); // thevenin resistance
lr=sqrt(3)*v*io*pfo-m*io^2*r1; // rotational losses
s=(ns-n)/ns; // slip
ir=Ve/(Re+(r1/s)+%i*(Xe+x2)); // rotor current at slip
Pm=m*abs(ir)^2*r1*((1-s)/s);
disp('case a');
Psh=Pm-lr; 
printf('Mechanical power output is %f KW\n',Psh/1000);
disp('case b');
wr=((2*%pi*f)*(1-s))/m; // speed at which motor is running
T=Psh/wr; 
printf('Net torque is %f Nm\n',T);
disp('case c');
lor=(Pm*s)/(1-s); // rotor/stator ohmic losses
Tl=lor*2+lr; // total losses
pi=Tl+Psh; // input power 
ne=Psh/pi;
printf('Efficiency of motor is %f percent',ne*100);
