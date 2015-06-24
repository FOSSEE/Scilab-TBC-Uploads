V=10;
I=6;
R1=5;
R2=2;
R3=3;
R4=4;
Rth=((R1*R2)/(R1+R2))+R3+R4;
A=[-1,1;-5,-2];   //Current coefficients using KVL equations
B=[6;-10];
I=inv(A)*B;
Vth=R2*I(2,1);
Pmax=(Vth*Vth)/(4*Rth);
disp("Watts",Pmax,"Maximum Power");