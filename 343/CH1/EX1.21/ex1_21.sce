R1=5;                       //Assigning values to resistors
R2=15;
R3=10;
R4=10;
R5=40;
R6=30;
R7=20;
R8=8;
Rc=R2+R3;                  //Simplifying the network
Re=R4+R5;
Rf=R6+R7;
R=1/((1/Re)+(1/Rf));
Rd=1/((1/R)+(1/Rc));
Req=Rd+R1+R8;
disp("Ohms",Req,"Effective resistance");