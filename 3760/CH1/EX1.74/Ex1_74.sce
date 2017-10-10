clc;
k1=4; // turns ratio for transformer 1
k2=3; // turns ratio for transformer 2
E1=120; // supply across which two transformers are connected in parallel
E21=E1/k1; // secondary voltage for transformer 1
E22=E1/k2; // secondary voltage for transformer 2
R=10; // load resistance
// Secondary windings are connected in series with the polarity such that the voltages E21 and E22   aid each other
E2=E21+E22; // resultant output voltage
il=E2/R; // Load current
// for mmf balance, primary current for T1
ip1=il/k1;
// for mmf balance, primary current for T2
ip2=il/k2;
ip=ip1+ip2; // total current drawn from source
printf('Current drawn from source is %f A\n',ip);
zi=E1/ip; 
printf('Primary input impedance is %f ohm\n',zi);
pi=E2*il;
printf('Primary input power is %f W',pi);
