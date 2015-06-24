//Chapter-14, Example 14.7, Page 473
//=============================================================================
clc
clear
//INPUT DATA
V1=2;//input voltage 1 of summing amplifier in V
V2=3;//input voltage 2 of summing amplifier in V
V3=4;//input voltage 3 of summing amplifier in V
R1=1;//resistance 1 of summing amplifier in kilo ohms
R2=1;//resistance 2 of summing amplifier in kilo ohms
R3=1;//resistance 3 of summing amplifier in kilo ohms
Rf=1;//feedback resistance in kilo ohms
R=1;//resistance in kilo ohms
//CALCULATIONS
V0=(-Rf/R)*(V1+V2+V3);//output voltage in volts
mprintf("Thus output voltage is %d V",V0);
//=================================END OF PROGRAM=======================================================================================================
