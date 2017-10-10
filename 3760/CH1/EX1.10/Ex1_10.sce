
clc;
E1=250;// voltage on low tension side
E2=2500; // voltage on high tension side
k=E2/E1; //turns ratio
Z=380+230*%i; // given load connected to high tension side
Zl=Z/k^2; // load referred to low tension side
zl=0.2+0.7*%i; // leakage impedance of transformer
zt=Zl+zl; // total series impedance
ztm=abs(zt); // magnitude of total series impedance
I1=E1/zt;
I1m=abs(I1); // magnitude of primary load current 
I2=I1m/k; // secondary load current
vt=5*abs(Z);
printf('secondary terminal voltage is %f V\n',vt);
R=500; // shunt branch resistance
X=250; // shunt branch leakage reactance
Ic=E1/R; // core less component of current
Im=E1/(%i*X); // magnetizing component of current
Ie=Ic+Im;// total exciting current
It=I1+Ie;// total current on low tension side
Itm=abs(It);
printf('primary current is %f A\n',Itm);
pf=cos(atan(imag(It),real(It)));
printf('power factor is %f lagging\n',pf),
lpf=real(Z)/abs(Z);
op=vt*I2*lpf;
printf('output power is %f W\n',op);
pc=Ic^2*R; // core less power
poh=I1m^2*real(zl); // ohmic losses
pin=E1*Itm*pf; // input power
n=(op/pin)*100; // efficiency
printf('efficiency of transformer is %f percent',n);
