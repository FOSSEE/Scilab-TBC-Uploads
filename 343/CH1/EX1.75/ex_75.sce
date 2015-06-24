V=30;                              //Assigning values to parameters
I1=25;
I2=10;
R1=5;
R2=10;
R3=2;
R4=10;
Rth=((R3*(R1+R2))/(R3+R1+R2))
A=[-1,1,0;-15,-12,10;0,10,-10];   //Current coefficients using KVL equations
B=[10;-125;30];
I=inv(A)*B;
Vth=V+R3*I(2,1);
Pmax=(Vth*Vth)/(4*Rth);
disp("Watts",Pmax,"Maximum Power");