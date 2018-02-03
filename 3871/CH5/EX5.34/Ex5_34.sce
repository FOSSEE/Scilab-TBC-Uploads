//===========================================================================
//chapter 5 example 34

clc;
clear all;

//variable declaration
e0          =8.854*10^-12;
d           =0.05;
er          = 1;        
a           = 0.25;
V1           = 12000;            //voltage in V
V2           = 32000;            //voltage in V


//calculations
//x-x0      = (1/2)*((V^2)/k)*(dc/dx)
//C     =(2*e0*er*A)/d
//dC    =(2*e0*er*a*x)/d
// y = dC/dx = (2*e0*er*a)/d
y       = (2*e0*er*a)/d;
X1       = 0.25/4;
// A =x1+x01      = (1/2)*((V1^2)/k)*(dc/dx)
X2       = 0.25/2;
//B = x2+x01      = (1/2)*((V2^2)/k)*(dc/dx)
//C    = B/A   =(V2/V1)^2
C       =   (V2/V1)^2;
x01      = (X2-(C*X1))/(1-C);
k          = ((1/2)*((V1^2))*(y))/(X1-x01);
X3      = (3/4)*0.25;
V       = sqrt(((X3-x01)*2*k)/y);           //voltage in V

//result
mprintf("voltage required to pull the plate three quarte way in = %3.3f KV",(V*10^-3));




