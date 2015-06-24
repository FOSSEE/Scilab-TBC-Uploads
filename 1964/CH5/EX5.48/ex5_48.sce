//Chapter-5, Example 5.48, Page 211
//=============================================================================
clc
clear
//INPUT DATA
Z=3-((%i)*4);//impedance in ohms
Vl=400;//line voltage in volts
//CALCULATIONS
Vp=Vl/(sqrt(3));//phase voltage in volts
Ip=Vp/abs(Z);//phase current in Amps
//line current(Il)=phase current(Ip)
Il=Ip;//line current in A
power_factor=cos(atan(imag(Z)/real(Z)));
power_consumed=sqrt(3)*Vl*Il*power_factor;
mprintf("Thus power consumed and power factor are %f W and %1.1f respectively",power_consumed,power_factor);
//note:answer computed for power consumed in textbook is wrong.Please check the calculations
//=================================END OF PROGRAM======================================================================================================
