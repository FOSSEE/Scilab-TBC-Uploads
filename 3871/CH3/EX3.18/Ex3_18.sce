//===========================================================================
//chapter 3 example 18

clc;clear all;

//variable declartaion
r   = 0.5*10^-3;        //in mm
p1   = 200;        //in Pa
p2   = 150;        //in Pa
Q    = 4*10^-7;         //in m**3/s
l    = 1;                //length in m
dr    = 0.01;           
dp1   = 3;
dp2    = 2
dQ    =0
dl    =0;

//calculations
u   = ((%pi)*((r^4)*((p1*10^3)-(p2*10^3)))/((8*Q*l)));    //absolute error inkr/m-s
er   = (dr/((r/(10^-3))))*100;                   //dr/r in %
ep1   = (dp1/(p1))*100;                   //dp1/p1 in %
ep2   = (dp2/(p2))*100;                   //dp2/p2 in %
eQ   = (dQ/(Q))*100;                   //dQ/Q in %
el   = (dl/(l))*100;                   //dl/l in %
p    = p1-p2;                 //dp/p in Pa
ep   = (((p1/(p))*(ep1))+(p2/(p))*(ep2));     //percentage error in % anging - to +
eu    = (4*er)+(ep+eQ+el);             //percentage error in % ranging - to +
ua     = u*(eu/100);                 //absolute error in kg/m-s

//result

mprintf("absolute error = %3.3e kg/m-s",u);
mprintf("\nxabsolute error = %3.2e kg/m-s",ua);

