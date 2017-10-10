//Calculation of Current and power dissipated in resistors connected in series.

clc;
clear;

R1=100;
R2=200;
R3=300;

Rt=R1+R2+R3;

V=250;

//Ohm's Law V=I*R

I=V/Rt;

// Power Loss Equation P=(I^2)*R

P1=(I^2)*R1;
P2=(I^2)*R2;
P3=(I^2)*R3;

Pt=P1+P2+P3;

P=V*I;

disp('ohms',Rt,'The total resistance in the circuit =')
disp('amperes',I,'The Current in the circuit =')
disp('watts',P1,'The power loss in the 100 ohms resistor =')
disp('watts',P2,'The power loss in the 200 ohms resistor =')
disp('watts',P3,'The power loss in the 300 ohms resistor =')
disp('watts',Pt,'The total power loss in the circuit =')
disp('watts',P,'The power loss in the circuit (using P=V*I ) =')
