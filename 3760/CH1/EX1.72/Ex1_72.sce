clc;
// from fig 1.82
E1=5; // supply voltage
E2=20; // induced secondary voltage
k=E2/E1; // turns ratio
r1=6; // primary parameters
r2=16; // secondary parameters
r21=r2/k; // secondary parameters referred to primary
E21=(E2*2)/k; // secondary voltage referred to primary
theta=60*(%pi/180); // phase angle assocoated with E2
// after referring to primary side, with E1 as a reference
V=E21*(cos(theta)-%i*sin(theta))-E1; //resultant voltage
I=abs(V)/(r1+r21); // magnitude of current 
pd1=I^2*r1; 
pd2=I^2*r21;
printf('power dissipated in %f ohm resistor is %f W\n',r1,pd1);
printf('power dissipated in %f ohm resistor is %f W\n',r21,pd2);
// Current lags E1 by 90 degree
teta1=90*(%pi/180);
// Since E2 lags E1 by 60 degree and Current due to resultant voltage lags E1 by 90, therefore phase difference Current I and E2 is
teta2=(90-60)*(%pi/180); 
Pd1=E1*I*cos(teta1); 
Pd2=E21*I*cos(teta2);
printf('power delivered by %f v source is %f W\n',E1,Pd1);
printf('power delivered by %f v source is %f W\n',E2,Pd2);



