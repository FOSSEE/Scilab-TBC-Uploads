V=24;                        //Assigning values to parameters
R1=4;
R2=8;
R3=6;
R4=12;
Ra=1/((1/R1)+(1/R4));       // Simplifying the network
Rb=1/((1/R2)+(1/R3));
Rc=1/((1/Ra)+(1/Rb));
I=V/Rc;
disp("Amperes",I,"Battery current")