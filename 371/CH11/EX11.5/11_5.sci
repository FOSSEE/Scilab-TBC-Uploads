//Control of DC motors//
//Example 11.5//
Edca=460;
E2=415;
C=Edca/(1.35*E2);
printf('\nCosine of the triggering angle=C=%f',C);
A=C*180/%pi;
printf('\nTriggering angle=A=%fdegrees',A);
Edca10=0.1*460;
C10=Edca10/(1.35*E2);
printf('\nCosine of the triggering angle=C10=%f',C10);
A10=C10*180/%pi;
printf('\nTriggering angle=A10=%fdegrees',A10);
Id=10^5/Edca;//dc current in amps//
I2=0.817*Id;//Current at rated speed in amps//
AP=sqrt(3)*E2*I2*C/1000;
printf('\nActive power drawn from the system at rated speed=AP=%fKW',AP);
RP=sqrt(3)*E2*I2*sqrt(1-C^2)/1000;//Reactive power drawn from the system//
printf('\nReactive power drawn from the system=RP=%fKVAR',RP);
AP10=sqrt(3)*E2*I2*C10/1000;
printf('\nActivepower drawn from thesystem at 10percentrated speed=AP10=%fKW',AP10);
RP10=sqrt(3)*E2*I2*sqrt(1-C10^2)/1000;//Reactive power drawn from the system//
printf('\nReactive power drawn from the system=RP10=%fKVAR',RP10);
P=RP10/RP;
printf('\nP=%f',P);
printf('\nThus reactive power has increased by 74.5893percent due to reduction in motor speed');

