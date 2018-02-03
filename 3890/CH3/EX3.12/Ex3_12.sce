//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.12
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

a=5;      //turns ratio
R1=.5;               //primary resistance in ohms
R2=.021;         //secondary resistance in ohms
x1=3.2;       //primary leakage reactance in ohms
x2=.12;      //secondary leakage reactance in ohms
Rc=350;      //core loss current in ohms
xm=98;         //magnetising reactance in ohms

Rd=R1+(a^2)*R2;
Xd=x1+(a^2)*x2;
Rdd=(R1/a^2)+R2;
Xdd=(x1/a^2)+x2;
Rcd=Rc/a^2;
xmd=xm/a^2;

printf('The circuit parameters referred to primary are Rd=%f Xd=%f Rc=%f xm=%f in ohms\n',Rd,Xd,Rc,xm)
printf('The circuit parameters referred to secondary are Rdd=%f Xdd=%f Rcd=%f Xmd=%f in ohms',Rdd,Xdd,Rcd,xmd)
