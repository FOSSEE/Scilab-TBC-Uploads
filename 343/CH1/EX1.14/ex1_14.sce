R1=1;                     // Assigning values to resistors
R2=2;
R3=1;
R4=1;
R=R3+R4;                 // Simplifying the network
Req=1+(1/((1/R2)+(1/R)));
V=100;
I=V/Req;
I2=I*(R/(R+R2));
disp("Amperes",I2,"Ammeter reading")