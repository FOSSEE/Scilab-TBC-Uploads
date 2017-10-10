clc;
zf=30+120*%i; // feeder impedance
E1=33000; // primary side voltage
E2=3300; // secondary side voltage
k=E2/E1; // turns ratio
P=100000; // load power 
pf=0.8;// leading power factor of load
zl=0.3+1.4*%i; // leakage impedance referred to l v side
zfl=zf*k^2; // feeder impedance referred to l v side
vt=3300; // terminal voltage
il=P/(vt*pf); // load current
R=real(zfl)+real(zl); // total resistance referred to l v side
X=imag(zfl)+imag(zl); // total impedance referred to l v side
vfl=vt+il*(R*pf-X*sqrt(1-pf^2)); // voltage at the sending end of feeder referred to l v side
vf=vfl/k; // voltage at the sending end of feeder 
printf('Voltage at the sending end of feeder is %f v\n',vf);
v2=vt+il*(real(zl)*pf-imag(zl)*sqrt(1-pf^2)); //voltage induced in secondary windings
v1=round(v2/k);
printf('voltage at the primary terminals of transformer is %f v\n',v1);
ap=il^2*R; 
printf('active power loss is %f W\n',ap);
ar=il^2*X;
printf('reactive power loss is %f W\n',ar);
cp=P-P*%i*tan(acosd(pf)*(%pi/180)); // complex power at load end in VA
cps=cp+((ap+ar*%i) ); // complex power at feeder end in VA
pfs=cos(atan(imag(cps),real(cps)));
printf('power factor at the sending end is %f leading',pfs);


