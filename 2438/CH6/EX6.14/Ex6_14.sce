//===========================================================================
// chapter 6 example 14


clc;
clear;


//input data
 I       = 15*10^-3;                //current in A
 t       = 5;                        //time in s
 A       = 120*10^-3*120*10^-3;     //area in m^2
 V       = 1000;                    //voltage in volts
 d       = 10^-3;                   //thickness in m

//calculation
 Q      = I*t;                      //charge on capacitor in C
//since charge and electric field are equal
 phi     = Q;                        //electric flux in mc
 D      = Q/A;                      //electric flux density in c/m^2
 E      = V/d;                      //electric field strength in dielectric

//result
mprintf('charge=%3.2e.C\n',Q);
mprintf(' electric flux=%4.3f.mc\n',phi);
mprintf(' electric flux density=%3.4f.c/m^2\n',D);
mprintf(' electric field strength=%2.3e.V/m\n',E);

//==================================================================================


