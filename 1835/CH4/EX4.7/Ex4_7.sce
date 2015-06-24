//Chapter-4, Illustration 7, Page 138
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
N=4.5;//No. of turns

//CALCULATIONS
Vh=N/2;//Velocity ratio of main spring spindle to hour hand spindle
Vm=12;//Velocity ratio of minute hand spindle to hour hand spindle
T1=8//     assumed no of teeth on gear 1
T2=32//    assumed no of teeth on gear 2
T3=(T1+T2)/4//       no of teeth on gear 3
T4=(T1+T2)-T3// no of teeth on gear 4
printf('no of teeth on gear 1=%d\n no of teeth on gear 2=%d\n no of teeth on gear 3=%d\n no of teeth on gear 4=%d',T1,T2,T3,T4)












