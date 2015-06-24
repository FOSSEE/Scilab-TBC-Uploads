//Chapter-1, Example 1.5, Page 36
//=============================================================================
clc;
clear;

//INPUT DATA
F= 6*10^9;  //frequency in Hz
Vo = 3*10^8;//velocity in m/s;
Vr = 200;//Radial velocity in kmph

//Calculations

lamda = Vo/F;//wavelength = vel/freq;
Fd    = (2*Vr/lamda)*(5/18);//doppler frequency in Hz;
//5/18 is multiplied to convert kmph to m/s

//Output
mprintf('Doppler Frequency is %3.2f KHz',Fd/1000);
