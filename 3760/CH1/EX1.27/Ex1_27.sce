clc;
// subscripts 1 and 2 are used to indicate transformer of 11kv at 25hz and 22kv at 50 hz respectively
// for same current power is doubled therefore P2=2P1
poh1=1.8; // ohmic losses as a percentage of total power P1
ph1=0.8; // hysteresis losses as a percentage of total power P1
pe1=0.3; // eddy current losses as a percentage of total power P1
poh2=poh1/2; // ohmic losses do not change with frequency but changes with voltage since p1=2p1 we get the result shown
// since frequency also gets doubled whwn voltage levels double therefore there is no change in flux density i.e is Bm1=Bm2
f1=25; // frequency in hertz
f2=50; // frequency in hertz
ph2=(f2/f1)*ph1; // hysteresis losses are directly proportional to frequency
pe2=(f2/f1)^2*pe1; // eddy current losses are directly proportional to frequency
// we know p2=2p1
ph2p=ph2/2; //  hysteresis losses as a percentage of total power P2
pe2p=pe2/2; // eddy current losses as a percentage of total power P2
printf('ohmic losses as a percentage of total power at 50 hz is %f percent\n',poh2);
printf('hysteresis losses as a percentage of total power at 50 hz is %f percent\n',ph2p);
printf('eddy current losses as a percentage of total power at 50 hz is %f percent\n',pe2p);
// efficiency at f1,v1
n1=(1-((poh1+ph1+pe1)/100)/(1+((poh1+ph1+pe1)/100)))*100; 
printf('efficiency at 25 hz is %f percent\n',n1);
// efficiency at f2,v2
n2=(1-((poh2+ph2p+pe2p)/100)/(1+((poh2+ph2p+pe2p)/100)))*100; 
printf('efficiency at 50 hz is %f percent',n2);

