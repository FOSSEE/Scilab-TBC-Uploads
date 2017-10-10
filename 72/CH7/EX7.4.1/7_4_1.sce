
//chapter_no.-7,  page_no.-311
//Example_no.7-4-1

clc;

//Calculate_the_output_power
n=.06;//conversion_efficiency
M=3.5;//Multiplication_factor
Eth=320*(10^3);//threshold_field
L=12*(10^-6);//Device_Length
n0=10^21;//Donor_concentration
e=1.6*(10^-19);
v0=1.5*(10^5);//Average_carrier_velocity
A=3*(10^-8);//Area
P=n*(M*Eth*L)*(n0*e*v0*A);
P=P*1000;
disp(P,'the_output_power(in mW)is =');

