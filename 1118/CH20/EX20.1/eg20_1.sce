clear;
//clc();
l1=2*10^(-3);
c1=0.01*10^(-6);

z1=sqrt(l1/c1);
printf("The surge impedance of the overhead line is:%.0f Ohm\n",z1);
v1=1/sqrt(l1*c1);
printf("The velocity of the wave in overhead line is:%.2f km/s\n",v1);

l2=0.25*10^(-3);
c2=0.102*10^(-6);

z2=sqrt(l2/c2);
printf("The surge impedance of the cable line is:%.2f Ohm\n",z2);
v2=1/sqrt(l2*c2);
printf("The velocity of the wave in cable is:%.2f km/s\n",v2);


ef=100*1000;
inc=ef/z1;

tau1=(2*z2)/(z2+z1);
et=tau1*ef;
printf("The transmitted voltage in the cable is:%.2f kV\n",et/1000);

taui1=(2*z1)/(z2+z1);
it=taui1*inc;
printf("The transmitted current in the cable is:%.2f A\n",it);

rhov1=(z2-z1)/(z1+z2);
er=rhov1*ef;
printf("The reflected voltage in the cable is:%.2f kV\n",er/1000);


rhoi1=(z1-z2)/(z1+z2);
ir=rhoi1*inc;
printf("The reflected current in the cable is:%.2f A\n",ir);

disp('the surge voltage has been changed to 100kV');


ef=100;
inc=ef*1000/z2;

tau2=(2*z1)/(z2+z1);
et=tau2*ef;
printf("The transmitted voltage in the cable is:%.2f kV\n",et);

taui2=(2*z2)/(z2+z1);
it=taui2*inc;
printf("The transmitted current in the cable is:%.2f A\n",it);

rhov2=(z1-z2)/(z1+z2);
er=rhov2*ef;
printf("The reflected voltage in the cable is:%.2f kV\n",er);

rhoi2=(z2-z1)/(z1+z2);
ir=rhoi2*inc;
printf("The reflected current in the cable is:%.2f A",ir);
