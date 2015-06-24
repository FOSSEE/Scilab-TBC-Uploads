V1=10;                     //Assigning values to parameters
V2=20;
R1=6;
R2=1;
R3=2;
R4=3;
R5=5;
A=[7,-1;1,-6];          //Mesh current coeffecients
B=[10;0]
I=inv(A)*B;
Vth=V2+R4*I(2,1);       //Calculation of Thevenin vlotage
Ra=(R1*R2)/(R1+R2);
Rb=Ra+R3;
Rth=(R4*Rb)/(R4+Rb);   //Calculation of Thevenin current
Il=Vth/(R5+Rth);
disp("Amperes",Il,"Current in 5 Ohm resistor using Thevenin theorem");