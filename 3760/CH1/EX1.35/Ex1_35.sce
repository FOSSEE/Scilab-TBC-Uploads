clc;

//V/f ratio is same for every case hence hysteresis losses and eddy current losses can be calculated separately
// data for column 1
vt1=214; // terminal voltage
f1=50; // frequency in hz
p1=100; // power input in Watts
vp1=vt1; // per phase voltage
pv1=p1/3; // per phase power
pc1=pv1/f1; // core loss per cycle
// data for column 2
vt2=171; // terminal voltage
f2=40; // frequency in hz
p2=72.5; // power input in Watts
vp2=vt2; // per phase voltage
pv2=p2/3; // per phase power
pc2=pv2/f2; // core loss per cycle
// data for column 3
vt3=128; // terminal voltage
f3=30; // frequency in hz
p3=50; // power input in Watts
vp3=vt3; // per phase voltage
pv3=p3/3; // per phase power
pc3=pv3/f3; // core loss per cycle
// data for column 4
vt4=85.6; // terminal voltage
f4=20; // frequency in hz
p4=30; // power input in Watts
vp4=vt4; // per phase voltage
pv4=p4/3; // per phase power
pc4=pv4/f4; // core loss per cycle
// Values of k1 and k2 have been obtained from graph 
k1=0.39;
k2=(pc1-k1)/50; 
F1=60; //frequency at which losses has to be calculated
ph1=k1*F1; //per phase hysteresis loss at 60 hz
pe1=k2*F1^2; // per phase eddy curent loss at 60 hz
pht=3*ph1; // total hysteresis loss
pet=3*pe1; // total eddy current loss 
printf('Total hysteresis and eddy current losses at 60 hz are %f W and %f W respectively\n',pht,pet);
F2=40; //frequency at which losses has to be calculated
ph2=k1*F2; //per phase hysteresis loss at 40 hz
pe2=k2*F2^2; // per phase eddy curent loss at 40 hz
pht=3*ph2; // total hysteresis loss
pet=3*pe2; // total eddy current loss 
printf('Total hysteresis and eddy current losses at 40 hz are %f W and %f W respectively',pht,pet);
