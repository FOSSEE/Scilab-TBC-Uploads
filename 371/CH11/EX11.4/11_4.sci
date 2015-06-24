//Control of DC motors//
//Example 11.4//
Edca1=1.15*440;//Rated output voltage from the converter for rated speed of750rpm//
printf('Rated output voltage from the converter=Edca1=%fvolts',Edca1);
N1=750;
N2=500;
Edca2=Edca1*N2/N1;
E2=415;
C2=Edca2/(1.35*E2);
printf('\nCosine of the triggering angle=C2=%f',C2);
A2=C2*180/%pi;
printf('\nTriggering angle=A2=%fdegrees',A2);
PF2=C2*(1+cos(15*%pi/180))/2;
printf('\nPowerfactor=PF2=%f',PF2);
Id=200;//dc current in amps//
I2=0.75*0.817*Id;//Current at 75percent load in amps//
RP2=sqrt(3)*E2*I2*sqrt(1-PF2^2)/1000;//Reactive power drawn at 75% load//
printf('\nReactive power at 75percent load=RP2=%fKVAR',RP2);
h=6;
Wv=24.17;//maximum voltage ripple in percent//
Wi=8;//maximum permissible current ripple in percent//
I6=Wi*Id/100;
printf('\nSixth harmonic ripple current=I6=%fAmps',I6);
W=314;
L=(Wv*Edca1*10)/(I6*h*W);
printf('\nInductance required in dc circuit=L=%fmH',L);
C1=Edca1/(1.35*E2);
printf('\nCosine of the triggering angle=C1=%f',C1);
A1=C1*180/%pi;
printf('\nTriggering angle=A1=%fdegrees',A1);
PF1=C1*(1+cos(15*%pi/180))/2;
printf('\nPowerfactor=PF1=%f',PF1);
I1=0.817*Id;//Current at 75percent load in amps//
RP1=sqrt(3)*E2*I1*sqrt(1-PF1^2)/1000;//Reactive power drawn at 75% load//
printf('\nReactive power at 75percent load=RP1=%fKVAR',RP1);



