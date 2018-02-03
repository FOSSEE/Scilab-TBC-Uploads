//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 3.6
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

V=240;                                           //Three phase supply voltage in Volts
Rl=20;                                           //Load Resistance in Ohms
Vbase=240;                                       //Three phase Base voltage in Volts
VAbase=10*10^3;                                  //Base voltage in kVA
Vpu=V/Vbase;                                     //Voltage in p.u.
Zbase=(Vbase^2/VAbase);                          //Base Impedance in Ohms
Zpu=Rl/Zbase;                                    //Load Impedance in p.u.
Ibase=VAbase/((nthroot(3,2))*Vbase);             //Base Current in Amps
Ipu=Vpu/Zpu;                                     //Current drawn in p.u.
Ia=Ipu*Ibase;                                    //Current drawn in Amps
P=Vpu*Ipu;                                       //Power drawn in p.u. 
Pt=(Ipu*VAbase)/1000;                            //Power drawn in kW


printf("\nCurrent drawn in amps %.2f A",Ia);
printf("\nPer unit value of current referred to the load side %.3f p.u",Ipu);
printf("\nPower drawn in kilo watts %.3f kW",Pt);
printf("\nPer unit value of Power referred to the load side %.3f p.u",P);
