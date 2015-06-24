//Line commuted Converters//
//Example 5.2//
Id=200;//rated dc current in amperes//
I2=0.817*Id;//AC line current in amperes//
printf('AC line current of the thyristor=I2=%famperes',I2);
E2=415;//AC line voltage in volts//
Xt=0.06*E2/I2;//effective reactance of the thyristor in ohms//
printf('\neffective reactance of the thyristor=Xt=%fohms',Xt);
C=1-((Id*Xt)/(E2*sqrt(3)));//cosine value of the commutational angle//
printf('\ncosine value of the commutational angle=C=%f',C);
CA=acos(C)*180/%pi;
printf('\ncommutation angle=CA=%fdegrees',CA);
IVR=(1-C)/2;//inductive voltage regulation//
printf('\nInductive voltage regulation=IVR=%f',IVR);



