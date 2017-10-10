//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.3
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Crnttap=6;                                         //Current tap setting in Amperes
TDsetting=1;                                       //Time dial setting
CTratio=100/5;                                     //CT ratio
IZB=[5 0.5; 8 0.8; 15 1.5];                        //Secondary output current in Amperes and burden resistance in Ohm
RC_multiple_Crntap=IZB(1,1)/Crnttap;   //Relay current in the multiple of the current tap setting
printf('\nCase: a');
if (RC_multiple_Crntap<1) then
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will not operate',RC_multiple_Crntap);
else
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will operate after %0.2f Seconds',RC_multiple_Crntap,time);
end
RC_multiple_Crntap=IZB(2,1)/Crnttap;  //Relay current in the multiple of the current tap setting
time=6                                            //Relay operating time from figure 10.12 in Seconds
printf('\n\nCase: b');
if (RC_multiple_Crntap<1) then
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will not operate',RC_multiple_Crntap);
else
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will operate after %d Seconds',RC_multiple_Crntap,time);
end
RC_multiple_Crntap=IZB(3,1)/Crnttap;  //Relay current in the multiple of the current tap setting
time=1.2                                          //Relay operating time from figure 10.12 in Seconds
printf('\n\nCase: c');
if (RC_multiple_Crntap<1) then
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will not operate',RC_multiple_Crntap);
else
    printf('\nFor the relay current in the multiple of the current tap setting %0.4f \nThe relay will operate after %0.2f Seconds',RC_multiple_Crntap,time);
end
