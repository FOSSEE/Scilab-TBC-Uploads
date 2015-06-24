//example 3.1
clc; funcprot(0);
Nc=17.69;
Nq=7.44;
Ny=3.64;
q=3*115;
Gamma=115; //lb/ft^3
c=320;
B=5;//ft
FS=4;//factor of safety
qu=1.3*c*Nc+q*Nq+0.4*Gamma*B*Ny
qall=qu/FS; //q allowed
Q=qall*B^2;
disp(Q,"allowable gross load in lb");

