clc;
f1=50; //frequency of supply
f2=20; //frequency required by the load
P=4;
//for part a

Nrf_ss=(120*f1)/P; //Speed of rotor field w.r.t stator structure
Nrf_rs=(120*f2)/P; //Speed of stator field w.r.t rotor structure
//Nr (+or-) speed of rotor field w.r.t rotor = speed of stator field w.r.t stator
//for +ve sign rotor must be driven in the direction of stator field at a speed 
Nr1=Nrf_ss-Nrf_rs;
Nr2=Nrf_ss+Nrf_rs;
mprintf('The two speeds are %d and %d \n',Nr1,Nr2);


//for part b

//for rotor speed Nr1
s1=(Nrf_ss-Nr1)/Nrf_ss;
//for rotor speed Nr2
s2=(Nrf_ss-Nr2)/Nrf_ss;
//On evaluation the ratio of voltages is found as 
 R=s1/s2; //R=E1/E2
mprintf('The ratio of two voltages available at the slip rings at the two speeds is %d',R);

//for part c





