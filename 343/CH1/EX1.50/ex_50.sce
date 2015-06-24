R1=20;
R2=10;
R3=15;
R4=10;
R5=10;
V1=100;
V2=80;
A=[13,-4;1,-4];           //Applying KCL at the two nodes
B=[300;120]
V=inv(A)*B;
IR3=(V(1,1)-V(2,1))/R3;
disp("Amperes",IR3,"Current in 15 Ohm resistor");