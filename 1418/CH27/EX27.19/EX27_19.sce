//EXAMPLE 27.19
//SHUNT GENERATORS

clc;
funcprot(0);

//Variable Initialisation
Van1=240;.........//Voltage of generator A at no load in Volts
Va200=220;.............//Voltage of generator A at 200 A in Volts
I1=200;.............//Current for first generator in Amperes
Van2=245;.........//Voltage of generator B at no load in Volts
Va220=220;.............//Voltage of generator B at 150 A in Volts
I2=150;.......//Current for second generator in Amperes

//Solving for current output of both the generators in Amperes
A=[1,1;-((Van1-Va200)/I1),((Van2-Va220)/I2)];
B=[300;(Van2-Van1)];
y=A\B;
disp(y(1),"Output current of first generator in Amperes:");
disp(y(2),"Output current of second generator in Amperes:");

Vbus=Van1-((Van1-Va200)/I1*y(1));....//Bus bar voltage in Volts
disp(Vbus,"Bus bar voltage in Volts:");
