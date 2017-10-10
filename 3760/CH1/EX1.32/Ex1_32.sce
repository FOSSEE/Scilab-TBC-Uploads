clc;
P=20000; // rated VA of transformer
E1=3300; // rated voltage of primary
E2=220; // rated voltage of secondary
v2=220; // voltage at which load is getting delivered
p=14960; // load power in Watts
pf=0.8; // power factor at on load
pc=160; // core loss
pfo=0.15; // power factor at no load
il=p/(v2*pf); // load current
is=P/E2; // rated current of secondary
vr=1 ; // percentage voltage drop of rated voltage in total resistance
vx=3 ; // percentage voltage drop of rated voltage in total leakage reactance
re2=(E2*vr)/(is*100); // total resistance referred to secondary
xe2=(E2*vx)/(is*100); // total leakage reactance referred to secondary
poh=il^2*re2; // ohmic losses 
pi=poh+pc+p; // total input power
// E2 as a reference
i2=il*(pf-%i*sqrt(1-pf^2));
E2n=v2+i2*(re2+%i*xe2); // secondary winding voltage
io=pc/(pfo*E2); // no load current
ic=pc/E2; // core loss current
im=sqrt(io^2-ic^2); // magnetizing current
I=i2+(ic-im*%i); // total input current, negative sign before im indicates that it lags behind E2 by 90 degree
pfi=cos(atan(imag(I),real(I))); // input power factor
printf('Total input power is %f W \n',pi);
printf('Input power factor is %f lagging',pfi);

