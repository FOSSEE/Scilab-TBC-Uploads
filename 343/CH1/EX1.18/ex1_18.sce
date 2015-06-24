R1=15;                          //Assigning parameters
R2=6;
R3=4;
R4=30;
R5=3;
Ra=1/((1/R2)+(1/R5));          // Simplifying the circuit
Rb=R3+Ra;
Rc=1/((1/R1)+(1/R4));
Req=Rb+Rc;
disp("Ohms",Req,"Effective resistance")