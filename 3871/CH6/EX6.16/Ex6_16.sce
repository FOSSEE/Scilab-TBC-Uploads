//===========================================================================
//chapter 6 example16

clc;clear all;

//variable declaration
Tp   = 1;     //numberof turns on primary
Ts   = 200;     //numberof turns on secondary
Is    = 5;       //secondary current in A
Zs    = 1;      // secondary burden in Ω
f      = 50;    //frequency in Hz
a      = 0.0011;    //cross sectional area of core in m**2
S     = 0.91;      //stamping faactor 
KT    =200;        //turns ratio
M      =80;       //ampere turns
Vs     =5;       //voltage

//calculations
Vs    = Is*Zs;      //secondary voltage in V
phimax   = Vs/(4.44*f*Ts);     //flux in the core in mWb
A      = a*S;       //net crss sectional area in m**2
Bmax    = phimax/(A);     //flux density in the core in T
Im     = M/(Tp);          //magnetising current in A 
Ip     = sqrt(((KT*Is)^2)+(Im**2));      //primary current in A
Ir     = Ip/(Is);               //current ratio
b      = ((180/(%pi))*(Im/(KT*Is)));      //phase angle in °(degrees)

//result 
mprintf("flux density in the core = %3.4f T",Bmax);
mprintf("\ncurrent ratio = %3.2f",Ir);
mprintf("\nphase angle = %3.2f °",b);
