clc;
p=20*10^6; // VA rating of alternator
z=5; // impedance of alternator
r=0.5; // resistance of alternator
v=11000; // voltage rating of bus bars
e=12000; // excitation voltage
vt=v/sqrt(3); // alternator per phase voltage
Ef=e/sqrt(3); // alternator per phase excitation voltage
pmax=round((((Ef*vt)/z)-((vt^2*r)/z^2))/10^6);
P=round(pmax*3); 
printf('Per phase maximum output power from alternator is %f MW\n',pmax);
printf('Total maximum output power from alternator is %f MW\n',P);
disp('case b');
pf=r/z; // power factor
ia=round((sqrt(vt^2+Ef^2-2*Ef*vt*pf))/z); // armature current
printf('Armature current is %f A\n',ia);
pf=(Ef*z-vt*r)/(ia*z^2); 
printf('Power factor under maximum power condition is %f leading',pf);
