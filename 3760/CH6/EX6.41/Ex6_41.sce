clc;
P=10000; // rated power of squirrel cage induction motor
V=400; // rated voltage of motor
m=3; // number of phases
// no load test results
Vo=400; // applied voltage
io=8; // no load current
Po=250; // no load power
// blocked rotor test
vb=90; // applied voltage
ib=35; // current
pb=1350; // input power
// ac resistance is 1.2 times dc resistance
rs=0.6; // per phase dc resistance of stator winding 
pr=Po-m*(io/sqrt(3))^2*(1.2*rs); // no load rotational losses
znl=Vo/(io/sqrt(3)); // no load impedance
rnl=Po/(m*(io/sqrt(3))^2); // no load resistance
xnl=sqrt(znl^2-rnl^2); // no load reactance
zbr=vb/(ib/sqrt(3)); // block rotor test impedance
Rbr=pb/(m*(ib/sqrt(3))^2); // block rotor resistance 
xbr=sqrt(zbr^2-Rbr^2); // block rotor reactance
x1=xbr/2;
xm=xnl-x1;
X2=xm+x1; 
r2=(Rbr-1.2*rs)*(X2/xm)^2;
printf('Rotational losses are %f watts\n',pr);
printf('Stator resistance is %f ohms\n',1.2*rs);
printf('Rotor resistance is %f ohms\n',r2);
printf('Magnetising reactance is %f ohms\n',xm);
printf('Stator reactance is %f ohms\n',x1);
printf('Rotor reactance is %f ohms',x1);  
