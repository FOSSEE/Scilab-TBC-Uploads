//Choppers and Transportation System Application//
//Example 13.3//
E=220;//dc supply voltage in volts//
Toff=200;//blocking period in microseconds//
Il=50;//load current in amps//
C=%pi*Toff*Il/(2*E);//capacitance for optimum frequency in microfarad//
C=75;
printf('Load capacitance required for optimum frequency=C=%fmicrofarad',C);
L1=Toff^2*10^-3/C;//inductance required in milliHenry//
L2=L1;
printf('\nInductance parameters=L1=L2=%fmilliHenry',L1);



