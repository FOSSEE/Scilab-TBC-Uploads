clc;
il=48; // load current(leading)
p=30; // load power in KW
vl=500; // line voltage
f=50; // supply frequency 
pf=(p*1000)/(sqrt(3)*vl*il);
vp=vl/sqrt(3); // phase voltage
zp=vp/il; // magnitude of phase impedance
rp=zp*pf; 
// since current is leading other parameter must be a capacitor
xc=zp*sqrt(1-pf^2); // reactance
c=(10^6)/(2*%pi*f*xc);
disp('circuit parameters are');
printf('Load resistance is %f ohm\n',rp);
printf('Load capacitance is %f micro farad',c);
