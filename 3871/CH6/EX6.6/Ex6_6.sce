//===========================================================================
//chapter 6 example 6
clc;clear all;
 
//variable declaration
Rsh  = 0.02;                         //shunt resistance in Ω
V    = 0.5;                              //potential difference across the shunt in V
Rm   = 1000;                        //resistance in Ω
I1   = 10;                                //current in A
I2   = 75;                                //current in A
I    =  100;			//current in A
x   = 40;			//deflection %
 
//calculations
Is    = V/(Rs);                             //current through shunt in A
Im    = V/(Rm);                          //current through ammeter for full-scale defelction in A
V1    = I1*Rsh;                                     //voltage across shunt for 10A in V
R1    = V1/(Im);			//resistance for the ammeter for a current of 10 A for full-scale defelction in Ω
V2    = I2*Rsh;                                     //voltage across shunt for 75A in V
R2    = V2/(Im);			//resistance for the ammeter for a current of 75 A for full-scale defelction in Ω
I3     = I*(100/(x));			//full-scale defelction current when 100 A gives 40% defelction
V3    = I3*Rsh;                                     //voltage across shunt for  250 A in V
R3    = V3/(Im);			//resistance for the ammeter for a current of 250 A for full-scale defelction in Ω


//result
mprintf("current through ammeter for full-scale defelction is %3.2f mA",(Im*10^3));
mprintf("\nResistance for the ammeter for a current of 10 A for full-scale defelction is %3.2f Ω",R1);
mprintf("\nResistance for the ammeter for a current of 75 A for full-scale defelction is %3.2f Ω",R2);
mprintf("\nResistance for the ammeter for a current of 250 A for full-scale defelction is %3.2f Ω",R3);
