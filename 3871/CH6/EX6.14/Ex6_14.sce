//===========================================================================
//chapter 6 example 14
clc;clear all;

//variable declaration
Rm    =40;     //resistance  in Ω
Im    = 1;     //current in mA
I1    = 10;    //current in mA  
I2    = 20;    //current in mA
I3    = 30;    //current in mA
I4    = 40;    //current in mA
I5    = 50;    //current in mA

//calculations
R1    = Rm/(((I1/(Im)))-1);
R2    = (R1+Rm)/(((I2/(Im))));
R3    = (R1+Rm)/(((I3/(Im))));
R4    = (R1+Rm)/(((I4/(Im))));
R5    = (R1+Rm)/(((I5/(Im))));
r1    = R1-R2;       //resistance  in Ω
r2    = R2-R3;       //resistance  in Ω
r3    = R3-R4;       //resistance  in Ω
r4    = R4-R5;       //resistance  in Ω
r5    = R5;       //resistance  in Ω

//result
mprintf("resistance of various section of the ayrtons shunt are = %3.4f Ω , %3.4f Ω , %3.4f Ω, %3.4f Ω, %3.4f Ω ",r1,r2,r3,r4,r5);

