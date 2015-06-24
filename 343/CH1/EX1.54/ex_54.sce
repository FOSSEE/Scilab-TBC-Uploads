R1=2;                                           //Assigning values to parameters
R2=10;
R3=2;
R4=5;
R5=1;
R6=4;
I1=28;
I2=2;
A=[11,-5,-1;5,-17,10;1,10,-13.5];               //Applying KCL at the two nodes
B=[280;0;20];
V=inv(A)*B;
I1=V(1,1)/R1;
I2=(V(1,1)-V(2,1))/R3;
I3=(V(1,1)-V(3,1))/R2;
I4=(V(2,1)-V(3,1))/R5;
I5=V(2,1)/R4;
I6=V(3,1)/R6;
disp("Amperes",I1,"Current I1")
disp("Amperes",I2,"Current I2")
disp("Amperes",I3,"Current I3")
disp("Amperes",I4,"Current I4")
disp("Amperes",I5,"Current I5")
disp("Amperes",I6,"Current I6")