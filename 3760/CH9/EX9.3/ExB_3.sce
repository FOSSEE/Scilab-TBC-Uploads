clc;
vl=400; // line voltage
z=10+7.5*%i; // load impedance per phase
disp('For star connected load');
vp=vl/sqrt(3); // phase voltage 
ip=vp/abs(z);// phase and line current are same in the case of star connected load 
an=atand(-imag(z),real(z));
pf=cosd(an);
P=sqrt(3)*vl*ip;
pa=sqrt(3)*vl*ip*pf;
pr=-sqrt(3)*vl*ip*sind(an);
printf('Phase and line currents are %f A\n',ip);
printf('Power factor is %f lagging \n',pf);
printf('Total volt ampere is %f VA\n',P);
printf('Total active power is %f W\n',pa);
printf('Total reactive power is %f VAr\n',pr);
disp('For delta connected load');
vp=vl // phase voltage and line voltage are same in the case of star connected load 
ip=vp/abs(z);
il=ip*sqrt(3); 
an=atand(-imag(z),real(z));
pf=cosd(an);
P=sqrt(3)*vl*il;
pa=sqrt(3)*vl*il*pf;
pr=-sqrt(3)*vl*il*sind(an);
printf('Phase current is %f A\n',ip);
printf('Line current is %f A\n',il);
printf('Power factor is %f lagging\n',pf);
printf('Total volt ampere is %f VA\n',P);
printf('Total active power is %f W\n',pa);
printf('Total reactive power is %f VAr\n',pr);
