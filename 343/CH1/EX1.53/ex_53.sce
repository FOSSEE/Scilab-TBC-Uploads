R1=2;
R2=10;
R3=5;
R4=15;
I1=1/3;
R5=3;
V1=10;
V2=18;
A=[8,-2;3,-9];                //Applying KCL at the two nodes
B=[50;-85];
V=inv(A)*B;
I1=(V1-V(1,1))/R1;
I5=(V(2,1)-V2)/R5;
disp("Amperes",I1,"Current in 2 Ohm resistor");
disp("Amperes",I5,"Current in 3 Ohm resistor");