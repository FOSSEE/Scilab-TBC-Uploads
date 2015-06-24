//Series and Parallel Connection of Thyristors//
//Example 4.1//
Vc=3500;//voltage rating of circuit//
Vt=750;//voltage rating of each thyristor//
Ic=1500;//current rating of circuit//
It=500;//current rating of each thyristor//
DF=0.1;//Derating factor of circuit//
Ns=Vc/(Vt*(1-DF));//number of devices in series//
printf('Number of Devices in Series=%f',Ns);
Np=Ic/(It*(1-DF));//number of devices in parallel//
printf('\nNumber of Devices in Parallel=%f',Np);