
//clear//
//Example5.11:"Output Drift""
//Page 161
//figure 5.23
clear;
clc;
Roff=909;           //in Ohm
Rf=10000;           //in Ohm
Anoise=11;
DT=55;      //degree Celsius
DVbyDT=5*10^-6;      //    V/C
DInoisebyDT=200*10^-12;            //  A/C
Vdrift=(DVbyDT*DT*Anoise)+(DInoisebyDT*DT*Rf);
disp("V",Vdrift,"Vdrift");
Av=Anoise;
Vdriftin=Vdrift/Av;
disp("V",Vdriftin,"Vdriftinput");
