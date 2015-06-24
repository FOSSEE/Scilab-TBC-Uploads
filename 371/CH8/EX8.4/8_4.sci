//Harmonic and Powerfactor with the Converter system//
//Example 8.4//
Id=100;//rated dc current in amperes//
I2=0.817*Id;//AC line current in amperes//
printf('AC line current of the thyristor=I2=%famperes',I2);
E2=230;//AC line voltage in volts//
Edc=200;//dc terminal voltage in volts//
PF=cos(%pi/4)*(1+cos(%pi/10))/2;//power factor//
printf('\npower factor=PF=%f',PF);
RP=sqrt(3)*E2*I2*sqrt(1-PF^2);//reactive power to be supplied by shunt compensator in VAR//
printf('\nReactive power to be supplied by shunt compensator=RP=%fVAR',RP);//end of the program//




