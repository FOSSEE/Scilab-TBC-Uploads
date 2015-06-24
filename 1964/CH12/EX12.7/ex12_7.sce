//Chapter-12, Example 12.7, Page 346
//=============================================================================
clc
clear
//INPUT DATA
V=230;//AC supply voltage
f=50;//frequency in Hz
noofturns=4;//noofturns ratio
Rl=600;//load resistance in ohms
//CALCULATIONS
Vrms=(V/4);//rms value of secondary voltage in V
Vm=sqrt(2)*(Vrms);//max value of secondary voltage
Vdc=(2*Vm)/(%pi);//DC output voltage
Pdc=(Vdc)^2/(Rl);//DC power in W
PIV=Vm;//PIV across each diode in V
f0=2*f;//output frequency in Hz
mprintf("Thus DC output voltage,DC power,PIV and output frequency are %1.0f V,%1.3f W,%2.1f V and %d hz respectively",Vdc,Pdc,PIV,f0);
//note:in given problem,Rl is 600 ohms,but in textbook calculations Rl taken is 1000 ohms,I took Rl as 600 ohms
//=================================END OF PROGRAM======================================================================================================
