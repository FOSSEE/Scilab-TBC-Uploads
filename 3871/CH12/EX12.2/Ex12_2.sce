//===================================================================
//Chapter 12 Example 2

clc;
clear all;

//variable declaration
Z1          = 1000;			//resistance of arm  in  Ω
Z2          = 500;			//resistance of arm  in  Ω
Z3          = 1000;			//resistance of arm  in  Ω
Z4          = 509.9;			//resistance of arm  in  Ω
ZX4         =100+500*%i;
theta1      = -90;          //angle in  °
theta2      = 0;          //angle in  °
theta3      = 0;          //angle in  °
theta4      = -90;          //angle in  °
theta41     = 78.69;

//calculations

thetax       = theta1+theta41;
thetay         = theta2+theta3;
x           = Z2*Z3;
//Z1*Z4  =Z2*Z3
//1/Z1      = A     = Z4/Z2*Z3   = Z4/x
A           = ZX4/x;
//1/Z1      = 1/R1 +(w*C1)*%i
Zx3         = (Z1*Z4)/Z2;
thetax3         = theta1+theta41-theta2;
Z3          = (Zx3*cos(thetax3*%pi/180))+(Zx3*sin(thetax3*%pi/180));


//result
mprintf("thetax        = %3.2f °",thetax);
mprintf("\nthetax        = %3.2f °",thetay);
mprintf("\nbalance can be restored by modifying the circuit so asto satisfy the phase angle condition");
mprintf("\ncomparing equations  1 and 2 R1     = %3.2f",1/real(A));
mprintf("\ncomparing equations  1 and 2  1/w*C1   = %3.2e",imag(A));
mprintf("\n1/w*C1 is already equal to 1000  Ω so the bridge can be easily balanced by adding 5000 Ω  accross capacitor in arm 1");
mprintf("\nsince R3 is already of 1000 Ω so the bridge can be easily balanced by adding capacitance 200 Ω in series across in arm 3");
mprintf("Note:there was a possibility that with the addition of resistance R1 in armm 1 as first option or with teh addition of capacitance  C3 in arm 3");
