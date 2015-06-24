R1=1.5;                         //Assignig values to parameters
R2=6;
R3=5;
R4=7.5;
R5=9;
V1=6;
V2=30;
A=[-22.5,7.5;7.5,-12.5];      //Current coeffecients
B=[0;30];
I=inv(A)*B;
Vth=(V1+R3*I(2,1)+R2*I(1,1))*-1;   //Thevenin voltage
Ra=(R3*R4)/(R4+R3);
Rb=Ra+R2;
Rth=(Rb*R5)/(R5+Rb);              //Thevenin resistance
Il=Vth/(R1+Rth);
disp("Amperes",Il,"Current in 1.5 Ohm resistor");