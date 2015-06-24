//Harmonic and Powerfactor with the Converter system//
//Example 8.3//
Id=200;//rated dc current in amperes//
I2=0.817*Id;//AC line current in amperes//
printf('AC line current of the thyristor=I2=%famperes',I2);
E2=415;//AC line voltage in volts//
Edc=400;//dc terminal voltage in volts//
Xt=0.04*E2/I2;//effective reactance of the thyristor in ohms//
printf('\neffective reactance of the thyristor=Xt=%fohms',Xt);
C=1-((Id*Xt)/(E2*sqrt(3)));//cosine value of the commutational angle//
printf('\ncosine value of the commutational angle=C=%f',C);
CA=acos(C)*180/%pi;
printf('\ncommutation angle=CA=%fdegrees',CA);
F=Edc/(1.35*E2*(1+C)/2);//cosine value of the firing angle//
printf('\ncosine value of the firing value=F=%f',F);
FA=acos(F)*180/%pi;
printf('\nfiring angle=FA=%fdegrees',FA);
I2=0.817*Id;//AC line current in amps//
printf('\nAC line current=I2=%famps',I2);
Ied=0.58*Id;//current through each device in amps//
printf('\nCurrent through each device=Ied=%famps',Ied);
PF=F*(1+C)/2;//power factor//
printf('\npower factor=PF=%f',PF);
AP=sqrt(3)*E2*I2*PF;//active power drawn from the mains in Watts//
printf('\nactive power drawn from the mains=AP=%fWatts',AP);
RP=sqrt(3)*E2*I2*sqrt(1-PF^2);//reactive power in VAR//
printf('\nReactive power drawn=RP=%fVAR',RP);//end of the program//




