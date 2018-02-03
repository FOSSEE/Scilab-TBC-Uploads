//==========================================================================
//chapter 5 example 7
clc;clear all;

//variable declaration
R      = 50;            //resistance of the magnetic coil in Ω
Rt    = 500;        //resistance in Ω
L      = 0.09;          //inductance of the voltmeter in H

//calculations
r      =Rt-R;
C      = (L/(r^2));             //capacitance to be placed in u F

//result
mprintf("capacitance to be placed  to make the instrument read correctly bot dc as well as ac = %3.3fe uF",(C*10^6));

