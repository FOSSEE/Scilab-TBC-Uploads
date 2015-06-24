R1=6;                              //Assigning values to parameters
R2=4;
R3=3;
R4=5;
R5=5;
R6=2;
R7=4;
Rx=R3+R4+(R3*R4)/R6;             //Converting Star to Delta
Ry=R4+R6+(R4*R6)/R3;
Rz=R3+R6+(R3*R6)/R4;
disp(Rx)
disp(Ry)
disp(Rz)
Ra=(R5*Rz)/(R5+Rz);
Rb=(R7*Ry)/(R7+Ry);
Rl=(R1*R2)/(R1+R2+Rx);          //Converting Delta to Star
Rm=(R2*Rx)/(R1+R2+Rx);
Rn=(R1*Rx)/(R1+R2+Rx);
Rp=Ra+Rn;
Rq=Rb+Rm;
Rr=(Rp*Rq)/(Rp+Rq);
Req=Rl+Rr;
disp("Ohms",Req,"Eqivalent resistance of the network");