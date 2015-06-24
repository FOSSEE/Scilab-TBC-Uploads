//clear//
//Caption: Program to calculate the total torque acting on a planar rectangular current loop
//Example9.3
//page 271
clc;
ax = sym('ax');
ay = sym('ay');
az = sym('az');
x = 1;//length in metre
y = 2; //wide in metre
S = [0,0,x*y]; //area of current loop in square metre
I = 4e-03; //current in Amps
B = [0,-0.6,0.8];
T = I*cross_product(S,B);
Tx = float(T(1));
disp(Tx*ax*1e03,'Total Torque acting on the rectangular current loop in milli N/m=')
//Result
//Total Torque acting on the rectangular current loop in milli N/m = 4.8*ax 
