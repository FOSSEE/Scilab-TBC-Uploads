//=====================================================================================
//chapter 12 example 17



clc;
clear all;

//variable declaration
R1         = 3100;         //resistance of arm  in  Ω
R2         = 25000;         //resistance of arm  in  Ω
R4         = 100000;         //resistance of arm  in  Ω
C1        = 5.2*10^-6;        //capacitance in F
f           = 25000;        //frequency in Hz

//calculations
//C3      = C1*((R2/R4)-(R1/R3))
//X     = C1*(R2/R4)
//Y       = C1*(R1/R3)
w           = 2*%pi*f;
x           =1/((w^2)*R1*C1);
//R3        = x/C3
A       = (C1*R2)/R4;
B       = 1+(C1*R1/x);
C3      = A/B;              //capcitance in uuF
R3      = x/C3;             //equivalent parallel resistance in   Ω

//result
mprintf("equivalent parallel resistance = %3.2f K Ω",(R3*10^-3));
