V=100;                 //Assigning values to the parameters
R1=5;
R2=10;
R3=20;
I1=V/R1;
I2=V/R2;
I3=V/R3;
Itot=I1+I2+I3;       //Calculating total current
disp("Amperes",I1,"Current through 5 Ohm resistor");
disp("Amperes",I2,"Current through 10 Ohm resistor");
disp("Amperes",I3,"Current through 20 Ohm resistor");
disp("Amperes",Itot,"Total current");
P=Itot*V;
disp("Watts",P,"Power drawn from the source");