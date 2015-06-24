R1=4;                       //Assigning values to parameters
R2=6;
R3=8;
R4=2;
Ra=1/((1/R1)+(1/R2));      // Simplifying the network
Rb=1/((1/R3)+(1/R4));
Req=Ra+Rb;
disp("Ohms",Req,"Effective resistance")