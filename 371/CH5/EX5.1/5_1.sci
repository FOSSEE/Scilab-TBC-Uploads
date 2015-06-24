//Line commuted Converters//
//Example 5.1//
Edc=440;//dc terminal voltage of the thyristor in volts//
E2=415;//input voltage of the thyristor in volts//
Id=100;//dc motor current in amps//
C=Edc/(1.35*E2);
printf('cosine of the firing angle=C=%f',C);
A=acos(C)*180/%pi;
printf('firing angle of the converter=A=%fdegrees',A);
Pac=1.05*1.35*E2*Id/1000;//Ac terminal power in Kilo watts//
printf('AC terminal power=Pac=%fKW',Pac);