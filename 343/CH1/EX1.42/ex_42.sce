R1=6;                        //Assigning values to parameters
R2=6;
R3=3;
R4=12;
R5=12;
R6=12;
R7=3;
Ra=(R4*R5)/(R4+R5+R6);      //Converting Delta to Star
Rb=(R4*R6)/(R4+R5+R6);
Rc=(R5*R6)/(R4+R5+R6);
Rd=R3+Rb;
Re=R7+Rc;
Rf=(R1*R2)/(R1+R2);
Rh=(Rd*Re)/(Rd+Re);
Req=Ra+Rf+Rh;
disp("ohms",Req,"Equivalent resistance of the network");