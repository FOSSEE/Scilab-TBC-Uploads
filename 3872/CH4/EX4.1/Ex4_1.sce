// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.1
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

S = 12;                         // Number of strands
Sd = 0.1328;                    // Diameter of the Strand
R = 0.302;                      // Resistance at 50 Deg Celcius in Ohm/miles
f = 60;                         // Frequency
T = 241.5;                      // Temperature Constant of Hard Drawn Copper
T1 = 20;                        // Temperature in Degree Celcius
T2 = 50;                        // Temperature in Degree Celcius
T3 = 25;                        // Temperature in Degree Celcius
R60T2 = 0.303;                  // Resistance at 60 Hz with 50 degree celcius From the Table A.3
R60T3 = 0.278;                  // Resistance at 60 Hz with 25 degree celcius From the Table A.3
RdcT3 = 0.276;                  // DC Resistace at 25 Degree Celcius

Sd = (0.1328*1000);             // Coverting Strand Diameter from inch to mil/inch
A = 12*Sd^2 ;                   // Cross Sectional Area of the 12 strand Conductors in cmil
pT1 = 10.66;                    // Resistivity at Temperature T1
pT2 = pT1*((T2+T)/(T1+T));      // Resistivity at 50 deg Celcius in Ohm-cmil/ft
L = (5280*1.02);                // Length of the Conductor in ft
RdcT2 = (pT2*L)/A;              // DC Resistance at 50 Degree celcius in Ohm/miles
IncR50 = (R60T2)/(RdcT2);       // Percentage Increase in Resistace for 50 degree celcius at 60 Hz Versus dc
IncR25 = (R60T3)/(RdcT3);       // Percentage Increase in Resistace for 25 degree celcius at 60 Hz Versus dc


printf('\n Cross Sectional Area of the 12 strand Conductor is  (A) = %0.0f  cmil',A);
printf('\n DC Resistance at 50 Degree celcius is  (RdcT2) = %0.3f  Ohm/mi',RdcT2);
printf('\n From table A.3, ratio at 50 Degree celcius is  (IncR50) = %0.3f ',IncR50);
printf('\n From table A.3, ratio at 25 Degree celcius is  (IncR25) = %0.3f ',IncR25);
printf('\n The 60 Hz resistance of the conductor is about %.2f to %.2f percentage higher than DC resistance',(IncR50-1)*100,(IncR25-1)*100);

//There is a small variation in the result since the value of cross sectional area which is actually 211630 is rounded off to 211600 in the book.
