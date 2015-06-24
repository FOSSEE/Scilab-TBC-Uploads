//Chapter-13, Example 13.19, Page 393
//=============================================================================
clc
clear
//INPUT DATA
Vcc=10;//collector to collector voltage in volts
Vbb=4;//base to base voltage in volts
Rb=200*10^3;//base resistance in ohms
Rc=2*10^3;//collector resistance in ohms
Vbe=0.7;//base to emitter voltage in volts
b=200;//common-emitter DC current gain
//CALCULATIONS
Ib=(Vbb-Vbe)/(Rb);//base current in A
Ic=b*Ib;//collector current in A
Ie=Ic+Ib;//emitter current in A
Vce=Vcc-(Ic*Rc);//collector to emitter voltage in volts
mprintf("Thus collector current,emitter current and base currents are %g A,%g A and %g A respectively\n",Ib,Ic,Ie);
mprintf("collector to emitter voltage is %1.1f V",Vce)
//=================================END OF PROGRAM=======================================================================================================
