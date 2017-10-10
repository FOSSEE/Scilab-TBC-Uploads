//Example 4.18
clc;

Ifsd=1*10^-3;              //Full scale deflection current
Rm=250;                    //Meter resistence
Erms=10;                   //RMS voltage

//Using Sensitivity 
Sdc=1/Ifsd;                //DC Sentitivity of meter
Sac=0.9*Sdc;               //AC Sentitivity of meter
Rs=Sac*Erms-Rm;            //Multiplier resistence
disp(Rs,'Multiplier Resistence')