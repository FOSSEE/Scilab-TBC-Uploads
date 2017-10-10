clc;
P=4500; // rated power of induction motor
V=400; // rated voltage of motor
f=50; // frequency
m=3; // number of phases
// no load test results
Vo=400; // applied line voltage
io=4.2; // no load line current
Po=480; //  power input
// blocked rotor test
vb=215; // line voltage
ib=15; // line current
pb=1080; // input power
rs=1.2; // rotor resistance referred to stator per phase
nt=2; // stator to rotor turns ratio
pfo=Po/(sqrt(3)*io*Vo); // no load power factor
pfb=pb/(sqrt(3)*ib*vb); // short circuit power factor
isc=(V/vb)*(ib*sqrt(3)); // per phase short circuit current
iop=io/sqrt(3); // per phase no load current
x=1; // scale 1 A= 1 cm
// circle diagram is drawn in fig 6.38
disp('case a');
// value of maximum torque at starting is not given
// now we note Bf=4.6 and B'f=1.25 using these values external resistance to be inserted is calculated
re=(4.6/1.25)*1.2; // external resistance
printf('External resistance referred to rotor is %f ohms\n',re/nt^2);
// as per the construction we obtain OB=11.24 which is needed to calculate starting line current
is=11.24*sqrt(3); 
printf('Starting current is %f A\n',is);
// angle OBB'=45.5 which is needed to calculate power factor
pf=cosd(45.5);
printf('power factor is %f lagging\n',pf);
pps=x*V; // per phase power scale
fp=P/m; // full load power per phase
disp('case b');
// now torque is 1.25 times full load torque
// now we note NK=2.9 and N'K=2.1 using these values external resistance to be inserted is calculated
re=(2.9/2.1)*1.2; // external resistance
printf('External resistance referred to rotor is %f ohms\n',re/nt^2);
// as per the construction we obtain ON=14.35 which is needed to calculate starting line current
is=14.35*sqrt(3); 
printf('Starting current is %f A\n',is);
// angle ONN'=58.3 which is needed to calculate power factor
pf=cosd(58.3);
printf('power factor is %f lagging\n',pf);
disp('case c');
// we obtain OH=5.35 which is per phase output current
// thetag=41.3
opf=cosd(41.3); 
printf('Operating power factor is %f leading\n',opf);
po=m*5.35*V*opf; 
printf('Output power is %f KW\n',po/1000);
// we note HL=3.95 and Ha=4.90 which is needed for efficiency
ne=3.95/4.9; 
printf('Induction generator efficiency is %f percent',ne*100);
