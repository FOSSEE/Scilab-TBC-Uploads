clc;
f=50; // frequency in hertz
E1=2200; // supply voltage in volts
E2=220; // secondary side voltage in volts
P=361; // core loss in watts
Io=0.6; // exciting current in Ampere
Is=60; // secondary load current in Ampere
pf=0.8; // power factor 
Ic=P/E1; // core loss component of current
printf('core loss component of exciting current is %f A\n',Ic);
Im=sqrt(Io^2-Ic^2); // magnetising component of current
printf('magnetising component of exciting current is %f A\n',Im);
ip=Is*(E2/E1); // primary current required to neutralise the secondary current
Iv=ip*pf+Ic; // total vertical compartment of primary current
Ih=ip*0.6+Im; // total horizontal compartment of primary current,pf cos(theta)=0.8 so sin(theta)=0.6
Ip=sqrt(Iv^2+Ih^2); // toatl primary current
printf('Total primary current is %f A\n',Ip);
ppf=Iv/Ip; // primary power factor
printf('primary power factor is %f (lagging)',ppf);
