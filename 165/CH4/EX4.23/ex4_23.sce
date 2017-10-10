//Example 4.23
close;
clc;

E=3;                  //in volts
Im=1*10^-3;           //in amperes
//After aging battery sterngth
E1=2.8;               //in volts

Rt=E/Im;              //Initial internal resistence
Rt1=E1/Im;            //Internal resistence after battery aging
e=(Rt-Rt1)*100/Rt;    //% error in reading

printf('\nTotal internal resistence of ohmmeter = %.2f k ohm\n',Rt/1000)
printf('\nInternal resistence of ohmmeter after battery decay = %.2f k ohm\n',Rt1/1000)
printf('\nPercentage error in reading = %.2f percent\n',e)