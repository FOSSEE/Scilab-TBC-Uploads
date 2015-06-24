//Control of DC motors//
//Example 11.2//
Vdc=440;//Rated dc voltage in volts//
Edca=Vdc+Vdc/10;//Required voltage after allowing 10% drop//
printf('Required voltage after allowing 10percent drop=Edca=%fvolts',Edca);
Edc=1.35*415;
C=Edca/Edc;
printf('\nCosine of the locked angle=C=%f',C);
A=acos(C)*180/%pi;//locked angle in degrees//
printf('\nConverter shall be locked at an angle of A=%fdegrees',A);
