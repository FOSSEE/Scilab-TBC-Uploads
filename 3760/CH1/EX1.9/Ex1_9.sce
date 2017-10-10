clc;
P=10000; //rated power of transformer
E1=2500; // rated primary side voltage
E2=250; // rated secondary side voltage
// initialising primary side parameters
r1=4.8; // primary resistance in ohm
x1=11.2; // primary leakage reactance in ohm
//initialising secondary side parameters
r2=0.048; // secondary resistance in ohm
x2=0.112; // secondary leakage reactance in ohm
k=E2/E1; // turn's ratio1
z=5+%i*3.5;
re2=r2+r1*k^2; //resistance referred to secondary
xe2=x2+x1*k^2; //reactance referred to secondary
ze2=re2+%i*xe2;
zt=z+ze2; // total load on secondary
Z=abs(zt);
I2=E2/Z; // load current on secondary
disp ('case a');
V2=round(I2*abs(z));
printf('secondary terminal voltage is %f V\n',V2 );
disp ('case b');
pf=0.8; // power factor
I2l=P/E2; // rated current of secondary side
VD=I2l*(re2*pf+xe2*sqrt(1-pf^2)); // voltage drop in transformer leakage impedance
Vt=E2-VD;
printf('secondary terminal voltage is %f V',Vt)

