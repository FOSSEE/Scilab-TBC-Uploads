clc;
e=400; // rated voltage of motor
E=510; // excitation emf
zs=0.5+%i*4; // synchronous impedance per phase
l=900; // net loss
al=90-atand(imag(zs),real(zs)); 
disp('case a');
Pmax=((e*E)/abs(zs))-((E^2*real(zs))/abs(zs)^2); // maximum output power
sp=Pmax*3-l;
printf('Shaft power is %f W\n',sp);
ia=(sqrt(e^2+E^2-2*e*E*cosd(atand(imag(zs),real(zs)))))/abs(zs);
il=sqrt(3)*ia; // line current
printf('Line current is %f A\n',il);
di=acosd((e*abs(zs)-E*real(zs))/(ia*abs(zs)^2));
pf=cosd(atand(imag(zs),real(zs))-di);
printf('Power factor is %f lagging\n',pf);
disp('case b');
Pmax=((e*E)/abs(zs))+((e^2*real(zs))/abs(zs)^2); // maximum input power 
ia=(sqrt(e^2+E^2-2*e*E*cosd(90+al)))/abs(zs);
sp=floor(Pmax*3-ia^2*real(zs)*3-900);
printf('Shaft power is %f W\n',sp);
il=sqrt(3)*ia; // line current
printf('Line current is %f A\n',il);
di=acosd((e+E*cosd(atand(imag(zs),real(zs))))/(ia*abs(zs)));
pf=cosd(atand(imag(zs),real(zs))-di);
printf('Power factor is %f lagging\n',pf);
