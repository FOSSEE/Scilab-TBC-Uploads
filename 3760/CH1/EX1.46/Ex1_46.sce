clc;
r1=9 ; // ratio of reactance to resistance for transformer 1 
r2=3 ; // ratio of reactance to resistance for transformer 2
d=atand(r1)-atand(r2); // differene between angles of transformer's leakage impedance
// leakage impedance of both transformers are equal z1=z2, threefore currents in both transformers are equal that is i1=i2;
I=1/cos((d/2)*(%pi/180)); // ratio of numerical sum of i1 and i2 to phasor sum of i1 and i2
k=cos((d/2)*(%pi/180));
printf('ratio of full load KVA delivered to sum of both transformers KVA ratings is %f',k);
