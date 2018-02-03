//=========================================================================================
//chapter 1 example 2

clc;
clear all;

//variable declarations
If     = 5;       //full-scale reading of instrument in A
Ra     = 0.01;    //ammeter resistance in ohm


//calculations
Pf     = ((If)^2)*(Ra);             //power sonsumption for full-scale deflection is W
n      = (If)/(Pf);             //instrument efficiency in A per watts

//result
mprintf("power sonsumption for full-scale deflection = %3.2f W",Pf);
mprintf("\ninstrument efficiency = %3.0f A per watts",n);


//================================================================================================
