//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
Id=1e-9;//Dark current of a silicon PIN photodiode in A
P=1e-6;//Optical power in W
R=0.65;//Responsivity in A/W
e=1.6e-19//Electronic charge in C
Deltaf=100e6;//Detector bandwidth in Hz

I=R*P;
mprintf("\n I=%.2f uA",I/1e-6)//Division by 10^(-6) to convert into uA
//Let the root mean square shot noise current be Ins
Ins=sqrt(2*e*(I+Id)*Deltaf);//As the root mean square shot noise current is the square root of mean square shot noise current in A
mprintf("\n The rms shot noise current = %.2f nA",Ins/1e-9);//Division by 10^(-9) to convert into nA
//The answers vary due to round off error
