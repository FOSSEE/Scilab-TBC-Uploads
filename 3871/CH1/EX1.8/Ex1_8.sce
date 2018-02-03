//=====================================================================================================
//chapter 1 example 8

clc;
clear all;

//variable declaration
E0    = 12;       //open -circuit voltage in V
R0    = 1;        //output resistance in kΩ
RL    = 25;        //output resistance in kΩ


//calculations
EL     = E0/(1+(R0/RL));   //measured value of voltage in V
Er     = EL-E0;                        //errorin measurement in V
p      = ((EL-E0)/(E0))*100;            //percentage error in %

//result
mprintf("measured value of voltage  = %3.3f V",EL);
mprintf("\nerror in measurement= %3.3f V",Er);
mprintf("\npercentage error = %3.3f  percent low",p);


//================================================================================================
