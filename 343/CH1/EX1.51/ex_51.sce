R1=0.2;
R2=0.3;
R3=0.1;
V1=120;
V2=110;
A=[5,-2;1,-4];                 //Applying KCL at the two nodes
B=[358.2;-324];
V=inv(A)*B;
I1=(120-V(1,1))/R1;
I2=(V(1,1)-V(2,1))/R2;
I3=(110-V(2,1))/R3;
disp("Amperes",I1,"Current I1")
disp("Amperes",I2,"Current I2")
disp("Amperes",I3,"Current I3")