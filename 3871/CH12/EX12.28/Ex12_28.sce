//=====================================================================================
//Chapter 12 example 28

clc;clear all;

//variable declaration
f    = 500*10^3;		//resistance inHz
C     = 120*10^-12;		//capcaitance in F
R   = 5;		//resistance in  Ω
r   = 0.02;		//resistance across oscilltory circuit in  Ω

//calculations
w      = 2*(%pi)*f;
Qt   = 1/(w*C*R);		//the true or effective Q of the coil
Qi   = 1/(w*C*(R+r));		//the indicated or calculated  Q of the coil  
e     = ((Qt-Qi)/(Qt))*100;	//percentage error in %

//result
mprintf("percentage error =%3.2f percentage ",e);

