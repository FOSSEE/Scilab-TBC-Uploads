//Example 4.16
clc;

Ifsd=100*10^-6;            //Full scale deflection current
Rm=500;                    //Meter resistence
Erms=100;                  //RMS voltage
Range=0.45*Erms;           //RMS to DC value

//Using Sensitivity 
S=1/Ifsd;                //Sentitivity of meter
Rs=S*Range-Rm;           //Multiplier resistence
disp(Rs,'Multiplier Resistence using Sensitivity')

//Using KVl
Rs=0.45*Erms/Ifsd-Rm;    //Multiplier resistence
disp(Rs,'Multiplier resistence ')