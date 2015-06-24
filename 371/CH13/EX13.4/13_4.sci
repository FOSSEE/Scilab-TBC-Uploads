//Choppers and Transportation System Application//
//Example 13.4//
E=220;//dc supply voltage in volts//
El=660;//Load voltage in volts//
Toff=100;//blocking period in microseconds//
Ton=(El/E-1)*Toff;//Conduction period in microseconds//
printf('Conduction period=Ton=%fmicroseconds',Ton);