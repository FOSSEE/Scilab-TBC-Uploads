//===========================================================================
//chapter 10 example 23
clc
clear all

//variable declaration
V    = 3;        //battery voltage in volts
Rm    = 60;        //resistance in Ω
Ifm    = 1.2;        //full-scale deflection meter current in mA
Rh    = 1500;        //half-scale deflection resistance in Ω
V1    = 0.3;        //at 10 % drop in battery voltage in V

//calculations
If    = V/Rh;    //battery current for full-scale deflection in A
If1     = If*10^3;          //battery current for full-scale deflection in mA
Ish    = If1-Ifm;        //current through zero adjuster resistor i.e,shunt resistor in mA
Rsh    = (Ifm*Rm)/Ish;    //resistance in Ω
Rse    = Rh-((Rsh*Rm)/(Rsh+Rm));    //current limiting resistor i.e,series resistor
V3    = V-V1;        //voltage in V
If2    = V3/Rh;        //battery current at full-scale deflection in A
If21    = If2*10^3;        //battery current at full-scale deflection in mA
Ish1    =If21-Ifm;        //current through shunt resistor in mA
Rsh1    = (Ifm*Rm)/Ish1;    //shunt resistor in   Ω
Rh1    = Rse+((Rm*Rsh1)/(Rm+Rsh1));        //total internal circuit resistance in  Ω
e    =((Rh-Rh1)/(Rh1))*100;        //percentage error in %

//calculation
mprintf("resistance = %3.2f  Ω",Rsh);
mprintf("\ncurrent limiting resistor = %3.2f  Ω",Rse);
mprintf("\nshunt resistor = %3.2f  Ω",Rsh1);
mprintf("\npercentage error = %3.3f percentage ",e);

