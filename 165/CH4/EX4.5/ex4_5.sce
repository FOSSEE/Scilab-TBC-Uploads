//Example 4.5
clc;

Ifsd=10*10^-3; //Full Scale Deflection Current
Rm=100;        //Internal resistance of movement

//Case I: For Range 0-5 V
V=5;            //Full range voltage of the instrument
Rs=V/Ifsd-Rm;   //Multiplier resistence
R3=Rs;

//Case II: For Range 0-50 V
V=50;              //Full range voltage of the instrument
Rs=V/Ifsd-R3-Rm;   //Multiplier resistence
R2=Rs;

//Case III: For Range 0-100 V
V=100;                  //Full range voltage of the instrument
Rs=V/Ifsd-R2-R3-Rm;     //Multiplier resistence
R1=Rs;
disp(R3,R2,R1,'Value of Resistence R1, R2, R3 are:')
disp('respectively')