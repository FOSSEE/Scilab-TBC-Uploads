//Choppers and Transportation System Application//
//Example 13.5//
f=200;//chopper frequency in HZ//
E=220;//dc supply voltage in volts//
Iav=100;//Average current in the circuit in amps//
Ra=0.02;//Armature resistance in ohms//
Rf=0.01;//Field resistance in ohms//
Ebav=50;//Average value of the Back emf in volts//
Eav=Iav*(Ra+Rf)+Ebav;//Average voltage in the circuit in volts//
printf('Average voltage in the circuit=Eav=%fvolts',Eav);
Ton=Eav*1000/(E*f);//conduction period in ms//
printf('\nConduction period=Ton=%fms',Ton);
