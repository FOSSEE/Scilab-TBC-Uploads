V1=80;                          //Assigning values to parametrs
V2=20;
I1=20;
R1=5;
R2=10;
R3=50;
R4=20;
R5=(R3*R4)/(R3+R4);
I10a=V1/(R1+R2+R5);           //Considering only 80V voltage source
I2=V2/R4;                     //Converting 20V voltage source to 1A current source
I10b=(I2*R5)/(R1+R2+R5);      //Considering only 1A current source
I10c=(I1*R1)/(R1+R2+R5);      //Considering only 20A current source
I=I10b+I10c-I10a;                //Adding the currents algebraically
disp("Amperes",I,"Current through 5 Ohm resistor using Superposition principle");