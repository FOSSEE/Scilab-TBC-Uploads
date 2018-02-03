//===========================================================================
//chapter 3 example 19

clc;clear all;

//variable declaration
C    = 1*10^-6;       //capacitance in F
dC   = 1;       //error capacitance in %
P    = 1000;    //resistance in Ω
dP   = 0.4;     //error in resistance in %
Q    = 2000;    //resistance in Ω
dQ   = 1;     //error in resistance in %
S    = 2000;    //resistance in Ω
dS   = 0.5;     //error in resistance in %
r    = 200;    //resistance in Ω
dr   = 0.5;    //error in resistance in %

//calcukations
Lx    = ((C*P)*((r*(Q+S))+(Q*S)))/(S);      //unknown inductance in Henry
u     =Q+S;                    //in Ω
du    = ((Q/(u))*(dQ))+((S/(u))*(dS));    //percentage error in %
v     = r*(Q+S);       
dv    = dr+du;         //percentage error of v in %
x     = Q*S;  
dx    = dQ+dS;        //percentage error of x in %
y     = (r*(Q+S))+(Q*S);    
dy    = ((v/(y))*(dQ))+((x/(y))*(dx));    //percentage error in %
dLx     = dC+dP+dS+dy;

//result
mprintf("unknown inductance = %3.2f henry",Lx);
mprintf("\npercentage error on inductance = %3.1f percentage",dLx);

