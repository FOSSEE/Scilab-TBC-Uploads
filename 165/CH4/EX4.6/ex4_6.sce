//Example 4.5
clc;

Ifsd=2*10^-3; //Full Scale Deflection Current
Rm=50;        //Internal resistance of movement

//Case I: For Range 0-10 V
V=10;           //Full range voltage of the instrument
Rs=V/Ifsd-Rm;   //Multiplier resistence
R4=Rs;

//Case II: For Range 0-50 V
V=50;              //Full range voltage of the instrument
Rs=V/Ifsd-R4-Rm;   //Multiplier resistence
R3=Rs;

//Case III: For Range 0-100 V
V=100;                  //Full range voltage of the instrument
Rs=V/Ifsd-R3-R4-Rm;     //Multiplier resistence
R2=Rs;

//Case IV: For Range 0-250 V
V=250;                  //Full range voltage of the instrument
Rs=V/Ifsd-R2-R3-R4-Rm;  //Multiplier resistence
R1=Rs;
disp(R4,R3,R2,R1,'Value of Resistence R1, R2, R3, R4 are:')
disp('respectively')