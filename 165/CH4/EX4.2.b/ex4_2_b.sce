//Example 4.2(b)
clc;

Ifsd=500*10^-6;    //Full Scale Current
S=1/Ifsd;          //Sensitivity
disp(S,'Sensitivity of 500 uA meter')

V=50;        //Full range voltage of the instrument
Rm=1000;      //Internal resistance of movement
Rs=S*V-Rm;  //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence')