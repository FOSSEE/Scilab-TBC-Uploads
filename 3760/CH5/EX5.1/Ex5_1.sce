clc;
v=220; // rated voltage of alternator
f=50; // frequency of supply
r=0.06; // resistance per phase
p=6; // number of poles
i=40; // full load current 
pf=0.8; // lagging power factor
vt=v/sqrt(3); // rated per phase voltage
IF=[ 0.2 0.4 0.6 0.8 1 1.2 1.4 1.8 2.2 2.6 3 3.4];
EA=[ 29 58 87 116 146 172 194 232 261.5 284 300 310];
subplot(313);
plot(IF,EA/sqrt(3));
xlabel('Field current');
ylabel('open circuit voltage');
title('open circuit characteristics');
IF1=[ 0.2 0.4 0.6 0.8 1 1.2 1.4 1.8 ];
ISC=[ 6.6 13.2 20 26.5 32.4 40 46.3 59 ];
subplot(323);
plot(IF1,ISC);
xlabel('Field current');
ylabel('short circuit current');
title('short circuit characteristics');
ZPF=[ 0 0 0 0 0 0 29 88 140 177 208 230];
subplot(333);
plot(IF,ZPF);
xlabel('Field current');
ylabel('terminal voltage');
title('full load zero power factor characteristics');
disp('EMF method');
// value of synchronous reactance is taken from given table
EA1=[ 29 58 87 116 146 172 194 232]
ZS=EA1./(ISC*sqrt(3));
disp('synchronous impedance (ohms) is');
disp(ZS);
XS=ZS; // RS^2 is negligible
disp('synchronous reactance (ohms) is');
disp(XS);
xs=2.27;
ia=i*(pf-%i*sqrt(1-pf^2)); // full load current in complex form
E=vt+ia*(r+%i*xs); // Excitation voltage
vr=floor(((abs(E)-vt)/vt)*100); 
printf('Voltage regulation is %f percent\n',vr);
disp('Mmf method');
// with ia as reference
E=vt*(pf+%i*sqrt(1-pf^2))+i*r; // Excitation voltage
// from fig 5.30 ,E=127 V
oc=1.69; // current for given excitation voltage obtained from open circuit characteristics
sc=1.2; // field current required to circulate full load short circuit current
al=atand(imag(E),real(E)); // angle between ia and E
Ff=(oc*(-sind(al)+%i*cosd(al)))-sc; // field mmf
printf('field mmf is %f A\n',abs(Ff));
// corresponding to Ff,E=163.5 v from O.C.C
Ef=163.5; 
vr=((Ef-vt)/vt)*100; 
printf('Voltage regulation is %f percent\n',vr);
disp('Zero power factor method');
// As per the description given in method
vd=30; // voltage drop armature leakage reactance
xa=vd/i; // armature leakage reactance
// with ia as reference
Er=vt*(pf+%i*sqrt(1-pf^2))+i*(r+%i*xa); // Excitation voltage
// from fig 5.30 ,E=148.6 V
oc=2.134; // current for given excitation voltage obtained from open circuit characteristics
Fa=0.84; // armature mmf from potier triangle
be=atand(imag(Er),real(Er)); // angle between ia and E
Ff=(oc*(-sind(be)+%i*cosd(be)))-Fa; // field mmf
printf('field mmf is %f A\n',abs(Ff));
// corresponding to Ff=2.797 A,E=169 v from O.C.C
Ef=169; 
vr=((Ef-vt)/vt)*100;
printf('Voltage regulation is %f percent\n',vr);
disp('New A.S.A method');
// parameters needed in this method are calculated in part c
id=0.366; // difference in field current between OCC and air gap line from fig 5.30
th=acosd(pf);
ig=1.507; // field current corresponding to rated rated per phase voltage
Ff=ig+sc*(%i*pf+sqrt(1-pf^2)); // field mmf without saturation
Ff=abs(Ff)+id; // ield mmf with saturation
printf('field mmf is %f A\n',Ff);
// corresponding to Ff=2.791 A,E=169 v from O.C.C
Ef=169; 
vr=((Ef-vt)/vt)*100;
printf('Voltage regulation is %f percent\n',vr);
disp('Saturated synchronous reactance method');
// for E=148.5 v (from part c), 
Era=179.5; // air line gap voltage
k=Era/abs(Er); // saturation factor
vdg=100.5; // voltage drop in unsaturated synchronous reactance
xag=vdg/i; // unsaturated synchronous reactance
xas=xa+((xag-xa)/k); // saturated synchronous reactance
// with vt as reference
Ef=vt+ia*(r+%i*xas); 
ok=2.15; // resultant mmf from fig 5.30
Ff=(abs(Ef)/abs(Er))*ok;
printf('field mmf is %f A\n',Ff);
// corresponding to Ff=2.78 A,E=169 v from O.C.C
Ef=169; 
vr=((Ef-vt)/vt)*100;
printf('Voltage regulation is %f percent\n',vr);
