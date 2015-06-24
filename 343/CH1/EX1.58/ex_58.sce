V1=4;                             //Assigning values to parameters
R1=2;
I1=1;
R2=1;
R3=3;
I2=3;
I1a=V1/(R1+R2);                 //Considering the current flow due to 4V voltage source
I1b=(I2*R1)/(R1+R2);            //Considering the current flow due to 3A current source
I1c=(I1*R1)/(R2+R1);            //Considering the current flow due to 1A current source
I=I1a+I1b+I1c;
disp("Amperes",I,"Current in 1 Ohm resistor using Superposition principle");