V1=10;                         //Assigning values to parameters
R1=10;
R2=1;
V2=8;
R3=8;
V3=12;
R4=20;
I20=V1/(R2+R4);                // Considering only 10V source
Ia20=V3/(R2+R4);               // Considering only 12V source
Ib20=V2/(R2+R4);               // Considering only 8V source
I=Ia20+Ib20-I20;               // Adding the currents algebraically
disp("Amperes",I,"Current through 20 Ohm resistor using Superposition principle")