clc;
Ef=1.4; // p.u excitation EMF
xs=1.2; // p.u synchronous reactance
p=0.5; // p.u synchronous power being delivered
i=1; // percentage increment in prime mover torque
vt=1; // rated per phase voltage
de=asind((p*xs)/(Ef*vt)); // load angle
dp=(i*p)/100; // increase in p.u real power 
ip=(dp/p)*100; 
printf('Percentage increase in real power is %d percent of its previous value\n',ip);
iq=-tand(de)*ip; 
printf('Percentage decrease in reactive power is %f percent of its previous value\n',-iq);
