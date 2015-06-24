//Chapter-13, Example 13.13, Page 391
//=============================================================================
clc
clear
//INPUT DATA
Icbo=10*10^-6;//current in A
hfe=50;//common-emitter DC current gain
Ib=0.25*10^-3;//base current in A
T2=50;//temperature in degree centigrade
T1=27;//temperature in degree centigrade
//CALCULATIONS
Ic1=(hfe*Ib)+((1+hfe)*(Icbo));//collector current in A when base current is Ib=0.25*10^-3
I1cbo=Icbo*(2*(T2-T1)/10);//new value of Icbo when temperature changes from 27 degree centigrade to 50 degree centigrade
Ic2=(hfe*Ib)+((1+hfe)*(I1cbo));//collector current in A
mprintf("Thus collector currents in case 1 and 2 are %g A ,%g A respectively",Ic1,Ic2);
//=================================END OF PROGRAM=======================================================================================================
