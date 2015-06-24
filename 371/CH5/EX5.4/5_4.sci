//Line commuted Converters//
//Example 5.4//
Edc=460;//dc terminal voltage of the thyristor in volts//
E2=415;//input voltage of the thyristor in volts//
Id=200;//dc motor current in amps//
C=Edc/(1.35*E2);
printf('cosine of the firing angle=C=%f',C);
A=acos(C)*180/%pi;
printf('\nfiring angle of the converter=A=%fdegrees',A);
Pdc=Edc*Id/1000;//dc power delivered by the converter in kilo Watts
printf('\ndc power delivered by the converter=Pdc=%fKW',Pdc);
Pac=1.05*Pdc;//Ac terminal power in KVA//
printf('\nAC terminal power=Pac=%fKVA',Pac);
Iac=Pac*1000/(sqrt(3)*E2);
printf('\nAC line current=Iac=%famps',Iac);
Ib=0.58*Id;//Branch current through the device in amps//
printf('\nBranch current through the device=Ib=%famps',Ib);