//===========================================================================
//chapter 6 example 15
clc;clear all; 

//variable declaration
Si  = 0.1*10^-3;      //current sensitivity in mA
Rm    = 500;            //meter resistance in Ω
V1     = 10;             //full -scale voltage in V
V2     =50;             //volage range in V
V3     =100;             //volage range in V
V4     =500;             //volage range in V

//calculations
Sv   = (1/(Si))*10^-3;      //voltage sensitivity in Ω/V
Rm1  =500*10**-3;      //Rm in kΩ
RT1   = Sv*V1;         //total resistance required in kΩ
R1    = RT1-Rm1;        //additional resistance in kΩ
RT2   = Sv*V2;         //total resistance required in kΩ
R2    = RT2-Rm1-R1;        //additional resistance in kΩ
RT3   = Sv*V3;         //total resistance required in kΩ
R3    = RT3-Rm1-R2-R1;        //additional resistance in kΩ
RT4   = Sv*V4;         //total resistance required in kΩ
R4    = RT4-Rm1-R1-R2-R3;        //additional resistance in kΩ

//result
mprintf("additional resistance = %3.2f kΩ",R1);
mprintf("\nadditional resistance = %3.2f kΩ",R2);
mprintf("\nadditional resistance = %3.2f kΩ",R3);
mprintf("\nadditional resistance = %3.2f kΩ",R4);
