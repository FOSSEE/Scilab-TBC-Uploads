//Example 4.7
clc;

Ifsd=200*10^-6;    //Full Scale Current
S=1/Ifsd;          //Sensitivity
disp(S,'Sensitivity of 200 uA meter')

V=50;        //Full range voltage of the instrument
Rm=100;      //Internal resistance of movement
Rs=S*V-Rm;   //Multiplier resistence
disp(Rs,'Value of Multipliier Resistence')
