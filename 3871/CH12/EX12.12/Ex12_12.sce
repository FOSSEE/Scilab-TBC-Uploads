//=====================================================================================
//Chapter 12 example 12

clc;
clear all;

//variable declaration
R2         = 834; 		//resistance of arm  in  Ω
R3         = 100; 		//resistance of arm  in  Ω
R4         = 64.9; 		//resistance of arm  in  Ω
R         = 0.4; 		//resistance in  Ω
C4        = 0.1*10^-6;		//capacitance in F
C2        = 0.124*10^-6;		//capacitance in F
f         = 2000;            //frequency in Hz

//calculations
L1     = R2*R3*C4;              //inductance in H
R1     = (R3*C4/C2);            // resistance in Ω
Z           = R1+(2*%pi*f*L1)*%i;         //effective impedance
Z1          = sqrt(((real(Z))^2)+(((imag(Z))^2)));
angle           = (atan((imag(Z))/real(Z)))*180/%pi;

//result
mprintf("L1     = %3.2e",L1);
mprintf("\nR1         = %3.2f",R1);
mprintf("\neffective impedance of test specimen  =%3.2f Ω angle %3.2f °",Z1,angle);


