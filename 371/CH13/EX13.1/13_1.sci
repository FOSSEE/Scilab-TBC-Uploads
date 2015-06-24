//Choppers and Transportation System Application//
//Example 13.1//
E=220;//dc supply voltage in volts//
El=22;//Load voltage in volts//
Ton=1000;//conducting period in microseconds//
T=2500;//Total timeperiod in microseconds//
L=1;//inductance in milliHenry//
R=0.25;//resistance in ohms//
t=L/R;//time constant in milliseconds//
printf('time constant=t=%fmilliseconds',t);
A=0.133;
Td=A*T;//Discontinuous condition starts at//
printf('\nDiscontinuous condition starts from Td=%fmicroseconds',Td);
Eo=0.4*E;//output voltage in volts//
printf('\nOutput voltage=Eo=%fvolts',Eo);
Iav=(Eo-El)/R;//Average current in amps//
printf('\nAverage current=Iav=%famp',Iav);
Imax=((E*(1-exp(-Ton/(t*1000))))/(R*(1-exp(-T/(t*1000)))))-(El/R);
printf('\nMaximum current=Imax=%famp',Imax);
Imin=((E*(exp(Ton/(t*1000))-1))/(R*(exp(T/(t*1000))-1)))-(El/R);
printf('\nMinimum current=Imin=%famp',Imin);
