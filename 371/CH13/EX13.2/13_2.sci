//Choppers and Transportation System Application//
//Example 13.2//
f=1;//operating frequency in KHZ//
E=220;//dc supply voltage in volts//
El=165;//Load voltage in volts//
Ton=El/(E*f);//conduction period in ms//
printf('Conduction period=Ton=%fms',Ton);
T=1/f;//total time period in ms//
printf('\nTotal time period=T=%fms',T);
Toff=T-Ton;//blocking period in ms//
printf('\nBlocking period=Toff=%fms',Toff);