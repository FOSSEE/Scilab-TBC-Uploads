//Harmonic and Powerfactor with the Converter system//
//Example 8.5//
I11=400/11;//amplitude of 11th harmonic current in Amperes//
V1= 11/(sqrt(3));//Input supply phase voltage in Kilo Volts//
P=7;//supply power per phase of filter in MVAR//
Pc=P+((V1^2*I11^2*10^-3)/(11*P));//AC Converter MVAR rating of the capacitor//
printf('value of MVAR rating of the capacitor=Pc=%fMVAR',Pc);
W=2*3.14*50;
C=(Pc*10^6)/(V1^2*W);//capacitance of the ShuntFilter in microFarad//
printf('\nvalue of the capacitance of shunt filter=C=%fmicrofarads',C);
W11=11*W;
L=10^8/(C*W11^2);//inductance of filter in mHenry//
printf('\nInductance of filter=L=%fmilliHenry',L);
Q=35;//value of Q//
R=(W11*L)/Q;//Resistance of filter in milliOhms//
printf('\nResistance of filter=R=%fmilliOhms',R);