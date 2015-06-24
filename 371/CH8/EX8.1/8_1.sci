//Harmonic and Powerfactor with the Converter system//
//Example 8.1//
I5=0.2;//amplitude of 5th harmonic current in Kilo Amperes//
Vp= 11/(sqrt(3));//Input supply phase voltage in Kilo Volts//
P=5;//supply power per phase of filter in MVAR//
Pc=P+((Vp^2*I5^2)/(5*P));//AC Converter power per phase in MVAR//
printf('\nvalue of AC converter power=Pc=%f MVAR',Pc);
C=(Pc*10^3*3)/(11^2*314);//capacitance of the ShuntFilter in milliFarad//
printf('\nvalue of the capacitance of shunt filter=C=%fmillifarads',C);
L=(106*10^6)/(400*4*25*250*3.14^2);//inductance of filter in mHenry//
printf('\nInductance of filter=L=%fmilliHenry',L);
Q=50;//value of Q//
W5=2*3.14*5*50;//angular frequency of 5th harmonic//
R=(W5*L)/Q;//Resistance of filter in milliOhms//
printf('\nResistance of filter=R=%fmilliOhms',R);