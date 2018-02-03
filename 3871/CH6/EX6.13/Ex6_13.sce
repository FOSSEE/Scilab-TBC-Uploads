//===========================================================================
//chapter 6 example 13
clc;clear all;

//variable declaration
Cv     = 70*10^-12;     //capacitance in F
V      =10000;            //electrostatic measurement  in V
Vv     = 100;        //reading in V

//calculations
Vc    = V-Vv;    //voltage across series capacitor in V
//since the capacitors are connected in series ,te charge on each is same
//Vv*Cv  = Vc*C
C       = (Vv*Cv)/(Vc);      //capacitance in uuF

//result
mprintf("capacitance of the condenser = %3.4f uuF ",(C*10^12));


