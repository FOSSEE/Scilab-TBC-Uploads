//===========================================================================
//chapter 6 example 17

clc;clear all;

//variable declaration
Tp    = 1;      //number of turns in primary
KT    = 200;    //turns ratio
Is    = 5;     //secondary current in A
Rs    = 1.5;   //secondary burden in Ω
f     = 50;    //frequency in Hz
L      =1.5;   //iron loss in Watts
Ie     = 40;     //current in A

//calculaations
Ts    = KT*Tp;      //number of turns in secondary
Vs    = Is*Rs;       //secondary voltage in V
phimax   = Vs/(4.44*f*Ts);    //flux inn the core in mWb
Il      = L/(Vs);       //iron-loss in the secondary side in A
Ip      = KT*Il;       //iron-loss current in primary side in A
x       =(KT*Is)+Ie;
e        = ((-Ie/((x))))*100;     //ratio error  in %

//result
mprintf("flux in the core = %3.3e percentage mWb",(phimax*10^3));
mprintf("\nratio error = %3.4f percentage",e);

