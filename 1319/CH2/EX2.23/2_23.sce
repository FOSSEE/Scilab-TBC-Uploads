//To find voltage v and current through 3 ohm resistor using nodal analysis

clc;
clear;

V=poly(0,'V');

Va=8-V;
Vb=-6;

//Resistors in order from the 8V side
R1=1;
R2=2;
R3=3;
R4=4;

// Nodal Analysis

X=((8-Va)/R1)+((Vb-Va)/R3)-((Va-(4*V))/R2); // Characteristic equation to find V

V=roots(X);

Va=8-V;

I=(Vb-Va)/3;

printf('i) The Voltage V (across 1 ohm resistor) is %g V\n',V)

if(imag(sqrt(I))) // Condition to check for negative sign
    printf('ii) The Current through 3 ohm resistor is %g A flowing from A to B\n',abs(I))
else
printf('ii) The Current through 3 ohm resistor is %g A flowing from B to A\n',abs(I))
end
  
