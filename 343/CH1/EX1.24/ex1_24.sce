R1=4;                    //Assigning values to parameters
R2=9;
R3=18;
R4=2;
R5=7;
R6=15;
V=125;
R7=(R2*R3)/(R2+R3);
Ra=R7+R1;
Rb=R5+R4;
R=(1/((1/Ra)+(1/Rb)))+R6;
I=V/R;
I1=(Rb/(Ra+Rb))*I;
IR3=I1*Rb/(Rb+R3);
VR3=IR3*R3;
I2=I-I1;
P4=I2*I2*R5;
disp("Amperes",I,"Current in 15 Ohm resistor");
disp("Amperes",IR3,"Current in 18 Ohm resistor")
disp("Volts",VR3,"Voltage across 18 Ohm resistor");
disp("Watts",P4,"Power dissipated in 7 Ohm resistor");