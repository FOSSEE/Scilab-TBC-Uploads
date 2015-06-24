I1=1;                      //Assigning values to parameters
R1=3;
R2=2;
R3=2;
R4=2;
R5=1;
Ra=(R1*R2)/(R1+R2);
Rb=(R3*R4)/(R3+R4);
Iab=(I1*Ra)/(Ra+Rb+R5);
A=[5,0,-2;0,4,-2;2,2,-5];   //Current coeffecients by applying KVL
B=[-1;1;0];
I=inv(A)*B;
IR5=I(3,1)+Iab;
disp("Amperes",IR5,"Current in 1 Ohm resistor");