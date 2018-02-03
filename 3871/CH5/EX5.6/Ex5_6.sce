//=============================================================
//Chapter 5 example 6
 
clc;clear all;

//variable declaration
R      = 50;            //resistance of the magnetic coil in Ω
Rt    = 500;			//resistance in Ω
L      = 0.09;			//inductance of the voltmeter in H
f      = 50;          
I      = 1;  


//calculations
r       = Rt-R;         //swamping resistance in Ω
X      = (2*%pi*f*r)^2;
Y       = L*x;
Y1         = I*L;
//L         = C*r^2/(I+w^2*C^2*r^2)
//C*r^2     = L*I+L*w^2*C^2*r^2
//C*r^2    =y1+x*(C^2)
//x*(C^2)-C*r^2+y1;
a   = X;
b      = -r^2;
c       = Y1;
x       = (-b-sqrt((b^2)-(4*a*c)))/(2*a);          //we consider the positive value



//result
mprintf("swamping resistance = %3.2e",x);



