//Page Number: 428
//Example 8.6
clc;
//Given
MQ=10;
M=0.4;
r=20;
Td=300; //K
T=290; //K

x=(MQ*MQ)/r;
//Power Gain
Ap=(r*x)/((1+sqrt(1+x))^2);
Apdb=10*log10(Ap);
disp('dB',Apdb,'Power gain:');

//Noise figure
z=(Td/T)/sqrt(1+((MQ*MQ)/r));
F=1+z;
Fdb=10*log10(F);
disp('dB',F,'Nosie figure:');

//Bandwidth
BW=2*M*sqrt(r);
disp(BW,'Bandwidth:');
