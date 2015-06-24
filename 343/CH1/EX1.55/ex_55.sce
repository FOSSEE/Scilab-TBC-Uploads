V1=35;                          //Assigning values to parameters
R1=3;
R2=2;
R3=4;
V2=40;
Ra=((R2*R3)/(R2+R3))+R1;       // Considering only 35V source
I=V1/Ra;
IR1=I;
IR3=I*(R2)/(R2+R3);
IR2=I-IR3;
Rb=((R1*R2)/(R1+R2))+R3;      //Considering only 40V source
I1=V2/Rb;
I1R3=I1;
I1R1=I1*(R2)/(R2+R3);
I1R2=I1-I1R1;
Ires3=IR1-I1R1;              // Adding the currents algebraically
Ires2=IR2+I1R2;
Ires4=I1R3-IR3;
disp("Amperes",Ires3,"Current in 3 Ohm resistor using Superposition Theorem");
disp("Amperes",Ires2,"Current in 2 Ohm resistor using Superposition Theorem");
disp("Amperes",Ires4,"Current in 4 Ohm resistor using Superposition Theorem");