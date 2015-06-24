//Harmonic and Powerfactor with the Converter system//
//Example 8.9//
E2=415;//AC line voltage in volts//
Edc=380;//dc terminal voltage in volts//
C=1.1*Edc/(1.35*E2);
printf('cosine of the triggering angle=C=%f',C);
A=acos(C)*180/%pi;
printf('\ntriggering angle of the device=A=%fdegrees',A);
PF=C*(1+cos(%pi/12))/2;//power factor//
printf('\npower factor=PF=%f',PF);
Id=200;
I2=0.817*Id;
RP=sqrt(3)*E2*I2*sqrt(1-PF^2)/1000;//reactive power to be supplied by shunt compensator in KVAR//
printf('\nReactive power to be supplied by shuntcompensator=RP=%fKVAR',RP);//end of the program//




