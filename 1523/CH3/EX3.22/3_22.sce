//Network Theorem 2
//pg no 3.25
//example 3.22
disp("removing the 10 Ohm resistor from the network");
disp("Applying KVL to mesh 1");
disp("4*I1-I2=-25");....//equation 1
disp("Applying KVL to mesh 2");
disp("-I1+4*I2=10");....//equation 2
A=[4 -1;-1 4];//solving the equations in matrix form
B=[-25  10]'
X=inv(A)*B;
disp(X);
disp("I1=-6 A");
disp("I2=1 A");
//Calculation of Vth (Thevenin's voltage)
a=-6;
b=1;
v=-((2*a)+(2*b));//the terminal B is positive w.r.t A
printf("\nWriting Vth equation, \n Vth = %.f V",v);
//Calculation of Rth (Thevenin's resistance)
x=2;
y=2;
z=1;
//star into delta network
r1=x+y+((x*y)/z);
r2=x+z+((x*z)/y);
r3=z+y+((z*y)/x);
mprintf("\nR1 = %.f Ohm \nR2 = %.f Ohm \nR3 = %.f Ohm",r1,r2,r3);
//Claculation of IL (Load Current)
r=1.33;
i=v/(r+v);
printf("\nIL = %.2f A",i);