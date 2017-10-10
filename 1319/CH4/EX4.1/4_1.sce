//Torque on the coil at a current of 1mA

clc;
clear;

N=60;
B=50*(10^-3);
I=1*(10^-3);

l=3*(10^-2);

// w= 2*r; w is the width
w=2*(10^-2);

Td=N*B*I*l*w;

printf('The torque on the coil carrying 1mA = %g micro Nm \n',Td*(10^6))
