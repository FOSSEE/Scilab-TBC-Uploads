//Network Theorem 1
//page no-3.58
//example3.51
//Calculation of Vth
disp("from the figure");
disp("Vth=4*I");
disp("Applying KVL to the mesh");
disp("0.5*Vth-8*I=-12");
A=[1 -4;0.5 -8];
B=[0 -12]'
X=inv(A)*B;
disp(X);
disp("Vth=8 V");
//Calculation of Isc
v=8;
i=12/4;
printf("\nIsc = %.f A",i);
//Calculation of Rth
r=v/i;
printf("\nRth = Vth/Isc = %.3f Ohm",r);
//calculation of RL
disp("For maximum power transfer");
printf("\nRth = RL =%.3f Ohm",r);
//calculation of Pmax
x=v/(2*r);
printf("\nIL = %.1f A",x);
n=(x^2)*r;
printf("\nPmax = %.f W",n);