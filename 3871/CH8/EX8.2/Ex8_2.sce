//===========================================================================
//chapter 8 example 2


clc;clear all;

//variable declaration
V       = 220;		//voltage in V
I        = 5;			//current in A
Rp    = 8800;		//resistance of pressure in Ω
V1     = 6;			//voltage excited in V

//calculations
P1      = V*I;                  //power consumed in current coil circuit in W
P2      = (V^2)/(Rp);               //power consumed in pressure  coil circuit in W
P        = P1+P2;                   //total power consumed in W
P11      = V1*I;                //power consumed in current coil circuit in W
P21      = (V^2)/(Rp);             //power consumed in pressure  coil circuit in W
PP        = P11+P21;            //total power consumed in W

//result
mprintf("total power consumed for direct load arrangement = %3.2f W",P);
mprintf("\ntotal power consumed for phanton loading with current circuit = %3.1f W",PP);

