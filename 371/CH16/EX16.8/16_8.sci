//Faults and Protection//
//Example 16.8//
printf(' As the thyristor converter is required for both rectification/inversion and as the fuse has to protect against inverter fault also,fuses will have to be located in branches and minimum of six fuses will be required.');
Id=765;//dc current in amps//
Ib=0.58*Id;//Current through each branch in amps//
printf('\n Current through each thyristor branch=Ib=%famps',Ib);
printf('\n Inverter short through:');
printf('\n Voltage causing inverter shoot through current=E2+eb');
printf('\n Maximum value of the voltage causing inverter shoot through current=sqrt(2)*E2+eb');
//E2=Input voltage of the thyristor converter//
//eb=Back emf of the motor causing regeneration//
printf('\n Recovery voltage across each fuse=Ew=E2/2+eb/(2*sqrt(2))');
//eb=Edi*cos(5*%pi/6)//
//Edi=Maximum dc value of the voltage on the thyristor converter=1.35*E2 for 6 pulse connection under discussion//
//Angle of 5*%pi/6 is normally taken as the limiting value of the firing angle beyond which inverter shoot through will takes place//
printf('\n Further fuse rated voltage=En=E2+Eb/sqrt(2)=2*Ew');
E2=500;
Ew=0.914*E2;
printf('\n Ew=%fvolts',Ew);
En=2*Ew;
printf('\n En=%fvolts',En);
printf('\n Ew/En=455/1000=0.45');
printf('\n Ita^2=1.4*Itm^2\n Total It^2 value of fuse=Ita^2+Itm^2=2.4*Itm^2=2.4*65000A^2s=1,56,000A^2s');
printf('\n I^2t of thyristor=1,90,000A^2s');
printf('\n I^2t of thyristor>I^2t of fuse or the fuse will protect the device');
printf('\n Short circuit on dc Bushers');
//The fault is shown in fig 16.9(c) along with path of the fault current//
printf('\n Maximum voltage causing fault current=sqrt(2)*E2');
printf('\n Recovery voltage across each fuse=0.5*E2=0.5*500=250volts');
printf('\n Ew/En=250/1000=0.25 and at this value Ita^2=0.4*Itm^2');
printf('\n It^2 of fuse=Ita^2+Itm^2=1.4*Itm^2=1.4*65000=91000A^2s');
printf('\n It^2 of thyristor=1,50,000A^2s\n It^2 of thyristor>>It^2 of fuse\n the fuse will protect thyristor');
printf('\n Puncture of a device:\n In this case also maximum voltage causing fault current=sqrt(2)*E2\n Thus as per case It^2 value of thyristor will be more than that of fuse');
printf('\n Short circuit between phase and bridge:\n In this case also as per case above fuse will protect device\n Thus the fuse will protect for all faults');
