//Control of DC motors//
//Example 11.7//
N1=500;
N2=400;
Eb1=410;
Eb2=Eb1*N2/N1;
printf('Eb2=%fvolts',Eb2);
V=440;//operating voltage of dc motor in volts//
P=100;//input power of dc motor in KW//
Ia=P*1000/V;
printf('\nIa=%fAmps',Ia);
Ra=(V-Eb1)/Ia;
printf('\nRa=%fohms',Ra);
E2=415;
Edca=Eb2+(0.75*Ia*Ra);//terminal voltage of dc motor at 500 rpm and 75% load//
printf('\nTerminal voltage of dc motor at 500 rpm and 75percent load=Edca=%fvolts',Edca);
C=Edca/(1.35*E2);//cosine of the triggering angle of the converter//
printf('\nCosine of the triggering angle of the converter=C2=%f',C);
A=acos(C)*180/%pi;//triggering angle of the converter in degrees//
printf('\ntriggering angle of the converter A=%fdegrees',A);
