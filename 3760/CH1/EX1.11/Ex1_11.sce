clc;
p=10000; // rated output of transformer
E1=2500; // primary side rated voltage
E2=250; // secondary side rated voltage
k=E2/E1; // turn's ratio
// initialising results of open circuit results on l.v side
Vo=250; //open circuit voltage
Io=1.4; // no load current
Po=105; // open circuit voltage
// initialising the results of short circuit results on h.v side
Vsc=104; // short circuit voltage
Isc=8; // short circuit current
Psc=320; // power dissipated
theta=Po/(Vo*Io); // no load power factor
Ic=Io*theta; // core less component of current
Im=Io*sqrt(1-theta^2); // magnetising component of current
Ro=round(Vo/Ic); // shunt branch resistance
Xo=round(Vo/Im); // shunt branch impedance
Zsc=Vsc/Isc; // short circuit impedance
reh=Psc/Isc^2; // total transformer resistance
xeh=sqrt(Zsc^2-reh^2); // total transformer leakage impedance
// equivalent circuit referred to l.v side
rel=reh*k^2;
xml=xeh*k^2;
printf('shunt branch resistance and reactance is %f ohm and %f ohm\n',Ro,Xo);
printf('value of transformer resistance and leakage reactance referred to l.v side is %f ohm and %f ohm\n',rel,xml);
// equivalent circuit referred to h.v side
Rch=Ro/k^2;
Xmh=Xo/k^2;
printf('shunt branch resistance and reactance referred to h.v side is %f ohm and %f ohm\n',Rch,Xmh);
printf('value of transformer resistance and leakage reactance referred to h.v side is %f ohm and %f ohm\n',reh,xeh); 
