clc;
zs=10+15*%i; // star connected load per phase
zd=12-15*%i; // delta connected load per phase
vl=400; // supply line voltage 
disp('case a');
// converting delta connected load to star connected load
zd=zd/3; 
vp=vl/sqrt(3);
i1=vp/zs; // line current in star connected load
i2=vp/zd; // line current in delta connected load
i=abs(i1+i2);
printf('Total line current is %f A\n',i);
an=atand(imag(i1+i2),real(i1+i2)); 
pf=cosd(an);
P=(sqrt(3)*vl*i*pf);
pr=sqrt(3)*vl*i*sqrt(1-pf^2);
printf('Power factor is %f leading\n',pf);
printf('Total power is %f W\n',P);
printf('Total reactve power is %f VAr',pr);

 
