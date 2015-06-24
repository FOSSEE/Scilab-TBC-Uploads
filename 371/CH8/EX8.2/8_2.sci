//Harmonic and Powerfactor with the Converter system//
//Example 8.2//
printf('For six pulse converter most effective harmonic is 6th and for worst case a=90 degree\n');
Wv=24.1;//voltage ripple in percentage//
printf('voltage ripple=Wv=%fpercent',Wv);
Id=200;
I6=(5*Id)/100;//Harmonic current for 6th harmonic in amp//
printf('\nHarmonic current for 6th harmonic=I6=%famp',I6);
Edc=460;//dc voltage in volts//
W=2*3.14*50;
La=1;//inductance already present in the circuit in milliHenry//
L=((Wv*Edc*10)/(I6*6*W))-La;//additional inductance required in milliHenry//
L=5.93-1;
printf('\nadditional inductance required=L=%fmilliHenry',L);