//Control of DC motors//
//Example 11.3//
Edca1=230;
N1=1000;
N2=500;
Eb1=210;
printf('Eb1=230-20=210volts');
Eb2=Eb1*N2/N1;
printf('\nEb2=%fvolts',Eb2);
V=40;//motor armature drop at rated load in volts//
Edca2=Eb2+V;
printf('\nEdca2=%fvolts',Edca2);
C1=1;//cosine of the firing angle corresponding to 1000 rpm load//
C2=C1*Edca2/Edca1;//cosine of the firing angle corresponding to 500 rpm load//
printf('\nCosine of the firing angle corresponding to 500 rpm load=C2=%f',C2);
A=acos(C2)*180/%pi;//firing angle corresponding to 500 rpm load in degrees//
printf('\nfiring angle corresponding to 500 rpm load A=%fdegrees',A);
