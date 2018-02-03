//===========================================================================
//chapter 6 example 9
clc;clear all;

//variable declaration
Rm    = 25;               //instrument resistance in Ω
V     = 25*10^-3;       //full-scale deflection voltage in V
V1    = 10;              //voltage to be measured in V
t     = 10;   
alphac  = 0.004;
alpham  = 0.00015;

//calculations
Im    = V/(Rm);      //full-scale deflection in mA
R     = (V1/(Im))-Rm;   //external resistance in Ω
Rt    = Rm+R;
Rm1 = Rm*(1+(alphac*t));     //instrument resistance with 10°C  rise in temperature in Ω
R1   = R*(1+(alpham*t));    //series resistance with 10°C  rise in temperature in Ω
R2   = Rm1+R1;             //total resistance in the voltmeter circuit in Ω
V2   = V1*(Rt/(R2));   //reading of voltmeter at 10°C rise in temerature in V
er   = ((V2-V1)/(V1))*100;   //percentage error in %

//reult
mprintf('percentage error = %3.2f percentage",er);
