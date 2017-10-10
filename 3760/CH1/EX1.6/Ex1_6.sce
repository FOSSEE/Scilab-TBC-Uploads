clc;
N1=100; // no. of primary turns
N2=160; // No. of secondary turns
N3=60; // No. of tertiary turns
I2=10; // secondary side current
I3=20; // tertiary side current
F2=N2*I2; // mmf of secondary winding
F3=N3*I3; // mmf of tertiary winding
disp('load connected to secondary is purely resistive and load connected to tertiary is purely capacitive' );
F23=sqrt(F2^2+F3^2); //resultant load mmf
F1=F23; // primary winding mmf balances this load mmf
I1=F1/N1;
printf('primary current is %f A\n',I1);
pf=F2/F1; 
printf('primary side power factor is %f leading',pf);
