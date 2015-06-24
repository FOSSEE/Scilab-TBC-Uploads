P=10^6;//pressure of gas in dyn per cm^2//
p=0.00333;//density of gas in gram per cm^3//
C2=3*P/p;//mean square velocity of gas in (cm/sec)^2//
Crms=sqrt(C2);//Root mean square velocity of Oxygen in cm/sec//
printf('Root mean square velocity of Gas=Crms=%fcm/sec',Crms);
Cm=Crms/1.085;//mean velocity of Gas in cm/sec//
printf('\nMean velocity of Oxygen=Cm=%fcm/sec',Cm);
Cmpv=Cm/1.128;//mean probable velocity in cm/sec//
printf('\nMean probable velocity of Oxygen=Cmpv=%fcm/sec',Cmpv);
