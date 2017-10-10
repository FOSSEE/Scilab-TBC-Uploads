clc;
L1=4*10^-3; // self indutance of winding 1
L2=6*10^-3; // self indutance of winding 2
M=1.8*10^-3; // mutual inductance of two windings
E1=130; // supply voltage for winding 1
f=500/%pi; // frequency of supply
l=0.2*10^-3; // load connected to winding 2
// writing voltage in rms form in matrix form V1=r1*I1+jw*L1*I1-jw*m*I2,  V2=-r2*I2-jw*L2*I2+jw*m*I1 to determine I1 and I2
t1=%i*2*%pi*f*L1;
t2=-%i*2*%pi*f*M;
t3=%i*2*%pi*f*M;
t4=-%i*2*%pi*f*l-%i*2*%pi*f*L2; // writing different terms of matrix
s=[t1 t2;t3 t4];
v=[130;0];
i=inv(s)*v; // calculating current in two windings
p=-imag(i(1));
printf('magnitude of current in primary winding is %f A',p);
