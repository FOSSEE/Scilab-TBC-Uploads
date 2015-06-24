//Page Number: 15
//Example 1.5
clc;
//Given
l=1.2;//mH
r=8;//ohm
c=200D-12;//F

//(i) Resonant frequency
f0=(1/(2*%pi))*sqrt(1/(l*c));//hz
disp('hz',f0,'Resonant frequency:');

//(ii) Impedance of circuit
disp('ohm',r,'Impedance of circuit:');

//(iii)Q factor of the circuit
q=1/(2*%pi*f0*c*r);
disp(q,'Q factor of the circuit:');

//(iv) Bandwidth
df=f0/q;//hz
disp('hz',df,'Bandwidth:');

//The value of resonant frequency is calculated wrong in book
//Hence Q factor and bandwidth, all these answers dont match
