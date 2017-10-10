//Example 4.15
clc;

Ifsd=1*10^-3;            //Full scale deflection current
Rm=200;                  //Meter resistence
Erms=10;                 //RMS voltage
Range=0.45*Erms;         //RMS to DC value

//Using Sensitivity 
S=1/Ifsd;                //Sentitivity of meter
Rs=S*Range-Rm;           //Multiplier resistence
disp(Rs,'Multiplier Resistence using Sensitivity')

//Using KVl
Rs=0.45*Erms/Ifsd-Rm;    //Multiplier resistence
disp(Rs,'Multiplier resistence ')