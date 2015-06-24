//Harmonic and Powerfactor with the Converter system//
//Example 8.6//
printf('For six pulse converter most effective harmonic is 6th and for worst case a=90 degree\n');
h=6;
Wv=24.1;//voltage ripple in percentage//
printf('voltage ripple=Wv=%fpercent',Wv);
Edc=460;//dc voltage in volts//
W=2*3.14*50;
Ldc=6;//total dc circuit inductance in milliHenry//
I6=Wv*Edc*10/(Ldc*h*W);//Harmonic current for 6th harmonic in amp//
printf('\nHarmonic current for 6th harmonic=I6=%famp',I6);
Id=300;
Wi=100*I6/Id;//maximum value of current ripple in percentage//
printf('\nmax. value of current ripple=Wi=%fpercent',Wi);//end of program//
