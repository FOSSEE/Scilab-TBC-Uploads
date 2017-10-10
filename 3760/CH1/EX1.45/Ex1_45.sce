clc;
v1=10; // voltage applied to primary when secondary is short circuited
ip=60; // primary current when secondary is short circuited
k=0.8; // turns ratio
E1=250; // input voltage for load voltage has to be calculated
E2=200; // rated voltage of secondary
il=100; // load current
pfo=0.24; // power factor during short circuit test
f=(1-k)^2/k^2; // factor by which secondary impedance has to be multiplied for referring it to primary
// ze1=z1+f*z2 therefore by ohm s law
ze1=v1/ip; // total impedance referred to primary
re1=ze1*pfo; // total resistance referred to primary
xe1=ze1*sqrt(1-pfo^2); // total leakage reactance referred to primary
disp('case a');
pf=0.8; //  lagging power factor of load
Ip=(E2*il)/E1; // current in primary due to load current
v2=(E1-Ip*(re1*pf+xe1*sqrt(1-pf^2)))*k;
printf('Secondary terminal voltage at %f lagging power factor is %f v\n',pf,v2);
disp('case b')
pf=1; // unity power factor
v2=(E1-Ip*(re1*pf+xe1*sqrt(1-pf^2)))*k;
printf('Secondary terminal voltage at unity power factor is %f v',v2);
