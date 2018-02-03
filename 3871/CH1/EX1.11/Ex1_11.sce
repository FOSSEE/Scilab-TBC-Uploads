//===========================================================================
//chapter 1 example 11


clc;
clear all;

//variable declaration
E     = 20;        //voltage in V
R1    = 2;         //resistance in kΩ
R2    = 2;         //resistance in kΩ
R3    = 1;         //resistance in kΩ
R     = 200;       //resistance whe current is connected to terminals in Ω


//calculations
Io     = (E/(R1+((R2*R3)/(R2+R3))))*(R2/(R2+R3));    //nortons equivalent current in kΩ
Rout   = R3+((1/(R1))+(1/(R2)));            //output resistance in kΩ
IL     = Io*((R1*1000)/((R1*1000)+R));         //measured value of current in mA
e      = ((IL-Io)/(Io))*100;                      //percentage error in %
A      = 100+e;              //accuracy of measurement in %

//result
//mprintf("resistance of voltage  = %3.2f kΩ",Rm);

mprintf("actual value of current flowing through 1000 Ω is %3.2f mA",Io');
mprintf("\nmeasured value of current when 200 Ω is connected is %3.2f mA",IL);
mprintf("\npercentage error = %3.1f percentage(low) ",e);
mprintf("\naccuracy of measurement = %3.1f percentage ",A);

