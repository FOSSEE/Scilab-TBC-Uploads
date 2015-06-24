R1=1;               // Assigning values to the parameters
R2=5;
R3=4;
R4=8;
R5=6;
R6=2;
R=R1+R2;           //series connection
Ra=R5+R6;
Rb=1/((1/R4)+(1/Ra)) ;
Rc=R3+Rb;
Req=1/((1/R)+(1/Rc));
disp("Ohms",Req,"Effective resistance");
