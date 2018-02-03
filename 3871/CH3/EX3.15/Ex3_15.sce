//===========================================================================
//chapter 3 example 15

clc;clear all;

//variable decelaration
er     = 0.015;                  //limiting error 
V    = 100;                      //range of voltmeter in V
I   = 150;                       //range of ammeter in mA
V1     = 70;                     //magnitude of voltage being measured in V
I1     = 80;                     //magnitude of current being measured in mA

//calculations
dV   = er*V;                    //magnitude(dV/V of limiting error of the voltmeter in V
eV     = (dV/(V1))*100;    //percentage(dI/I) limitng error at this voltage in %
dI     = er*I;                  //magnitude of limitng error off the ammeter  in mA
eI     = (dI/(I1))*100;    //percentage limitng error at this current in %
P      = V1*(I1/(1000));                 //power in W
dPx    = eV+eI;           //relative limiting error(dPx/Px) in power measurement in %

//result
mprintf("relative limitng error in power measurement= %3.4f percentage",dPx);
