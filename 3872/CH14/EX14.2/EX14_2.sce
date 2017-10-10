//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 14 ; Example 14.2
//Scilab Version - 6.0.0 ; OS - Windows


clc;
clear;
MVAtr1=40;                                                 //MVA FOA rating of transformer 1
MVAtr2=40;                                                 //MVA FOA rating of transformer 2
normal=1.28;                                               //Factor for normal summer operation
emergency2hr=1.70;                                         //Factor for two hour emergency operation
emergency30day=1.55;                                       //Factor for thirty days emergency operation
unequalloadingfactor=0.95;                                 //Factor to account for unequal transformer loading
MVAstation=normal*(MVAtr1+MVAtr2)*unequalloadingfactor;    //MVA rating of thr station
MVAstationemergency2hr=emergency2hr*MVAtr1;                //MVA rating of a single transformer for two hour emergency
MVAstationemergency30day=emergency30day*MVAtr1;            //MVA rating of a single transformer for thirty days emergency
printf('\nThe summer normal rating of the station is %f MVA',MVAstation);
printf('\nThe emergency rating of the single transformer for two hours is %f MVA',MVAstationemergency2hr);
printf('\nThe emergency rating of the single transformer for thirty days is %f MVA',MVAstationemergency30day)
