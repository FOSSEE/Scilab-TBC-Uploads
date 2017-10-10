clc;
v=400; // supply voltage
f=50;  // frequency of supply
// results of short circuit test
V=200; // applied voltage
i=100; // short circuit current
pf=0.4; // power factor
zsc=(V*sqrt(3))/i; // short circuit impedance
rsc=zsc*pf; // short circuit resistance
xsc=sqrt(zsc^2-rsc^2); // short circuit reactance
R=sqrt(((xsc^2+rsc^2)-3*((rsc/3)^2+(xsc/3)^2))/2); // resistance of feeder
disp('with star connection');
ts1=(3*(v/sqrt(3))^2*rsc)/((R+rsc)^2+xsc^2); // product of starting torque and synchronous speed
// now two feeders are connected in parallel therefore net resistace of feeder is 
rp=R^2/(R+R); 
ts2=(3*(v/sqrt(3))^2*rsc)/((rp+rsc)^2+xsc^2); // product of new starting torque and synchronous speed
pr=(ts2-ts1)/ts1; 
printf('Percentage increase in starting torque with star connection is %f percent\n',pr*100);
disp('With delta connection');
ts1=(3*(v/sqrt(3))^2*(rsc/3))/((R+(rsc/3))^2+(xsc/3)^2); // product of starting torque and synchronous speed
// now two feeders are connected in parallel therefore net resistace of feeder is 
rp=R^2/(R+R); 
ts2=(3*(v/sqrt(3))^2*(rsc/3))/((rp+(rsc/3))^2+(xsc/3)^2); // product of new starting torque and synchronous speed
pr=(ts2-ts1)/ts1; 
printf('Percentage increase in starting torque with delta connection is %f percent\n',pr*100);

