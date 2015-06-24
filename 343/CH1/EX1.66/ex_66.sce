V1=150;                  //Assigning values to parameters
V2=50;
I1=13;
R1=15;
R2=60;
R3=40;
R4=30;
A=[-1,1;-15,-100];      //Current coeffecients
B=[13;-150];
I=inv(A)*B;
Vth=-V2+R3*I(2,1);     //Thevenin voltage
Ra=R1+R2;
Rth=(R3*Ra)/(R3+Ra);   //Thevenin resistance
Il=Vth/(R4+Rth);
disp("Amperes",Il," Current flowing in 20 Ohm resistor");