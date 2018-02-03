//===========================================================================
//chapter 3 example 20

clc;clear all;

//variable declaration
R    = 100;      //resistance in  Ω
dR   = 5;       // error (dR/R) in %
L   = 2;      //inductance 
r     = 50;
dL   = 10;       // error (dl/L) in %

//calculations
u    = R**2;      
du    = 2*dR;     //percentage error(du/u) in %
v     = ((2*(%pi)*(r))**2)*(L**2); 
dv    =2*dL;     //percentage error(dv/v) in %
x     = u+v;
dx    =((u/(x))*(du))+((v/(x))*(dv));    //percentage error(dx/x)in %
Z     = sqrt(x);
dZ    = dx/(2);         //uncertanity (dZ/Z) in %

//result
mprintf("uncertanity in the measurement = %3.3f percentage",dZ);
