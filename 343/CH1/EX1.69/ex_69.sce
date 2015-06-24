R1=10;                    //Assigning values to parameters
R2=10;
R3=15;
R4=20;
V=100;
A=[-20,10;10,-25]        //Current coeffecients by KVL equations
B=[-100;0];
I=inv(A)*B;
IN=I(2,1);              //Norton's current
RN=(R1*R2)/(R1+R2)+R3;  //Norton's resistance
Il=(IN*RN)/(RN+RN)
disp("Amperes",Il,"Current in load of 20 Ohm resistor using Norton theorem ")