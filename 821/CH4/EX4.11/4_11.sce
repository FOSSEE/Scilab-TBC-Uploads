T=320;//47C in kelvin//
R=8.31*10^7;//Universal gas constant in erg per degree per mole//
M=32;//molecular weight of O2 in gram per mole//
C2=(3*R*T)/M;//mean square velocity of Oxygen in (cm/sec)^2//
Crms=sqrt(C2);//Root mean square velocity of Oxygen in cm/sec//
printf('Root mean square velocity of Oxygen=Crms=%fcm/sec',Crms);
Cm=sqrt(8*R*T/(%pi*M));//mean velocity of Oxygen in cm/sec//
printf('\nMean velocity of Oxygen=Cm=%fcm/sec',Cm);
Cmpv=sqrt(2*R*T/M);//mean probable velocity in cm/sec//
printf('\nMean probable velocity of Oxygen=Cmpv=%fcm/sec',Cmpv);//in textbook in Cmpv value it is misprinted as 10^9 but it is actually 10^4//
