//===========================================================================
//chapter 3 example 12

clc;clear all;

//variable declaration
u    = 150;         //capacitance in uF
du   = 2.4;         //capacitance in uF
v    = 120;         //capacitance in uF
dv   = 1.5;         //capacitance in uF

//calculations
y    = u+v;         //resultant capacitance when capacitors are connectedd in parallel in uF
dy   = du+dv;       //limiting error in uF(ranging + to -)
er   = (dy/(y))*100;  //relative limiting error in %(ranging + to -)

//result
mprintf("limiting error of the resultant capacitance  = %3.2f percentage',er);

