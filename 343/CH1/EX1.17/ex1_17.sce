R1=15;                      //Assigning values to parameters
R2=6;
R3=30;
R4=3;
R5=4;
V=10;
Ra=R1+R2;                  // Simplifying the circuit
Rb=R3+R4;
Rc=1/((1/Ra)+(1/Rb));
Req=Rc+R5;
I=V/Req;
disp("Amperes",I,"Battery current")