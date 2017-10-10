//Example 4.17
clc;

Ifsd=100*10^-6;            //Full scale deflection current
Rm=100;                    //Meter resistence
Erms=50;                   //RMS voltage

//Using Sensitivity 
Sdc=1/Ifsd;                //DC Sentitivity of meter
Sac=0.9*Sdc;               //AC Sentitivity of meter
Rs=Sac*Erms-Rm;            //Multiplier resistence
disp(Rs,'Multiplier Resistence')