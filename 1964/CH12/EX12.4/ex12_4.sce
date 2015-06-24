//Chapter-12, Example 12.4, Page 344
//=============================================================================
clc
clear
//INPUT DATA
Vac=230;//AC supply voltage
f=60;//frequency in Hz
Rl=900;//load resistance in ohms
noofturns=5;//no of turns
Rl=900;//resistance of load in ohms
rs=100;//secondary coil resistance in ohms
//CALCULATIONS
Vs=(Vac)/(noofturns);//voltage across two ends of secondary in V
Vrms=(Vs)/2;//voltage from center tapping to one end
Vm=Vrms*sqrt(2);//mean voltage in V
Vdc=(2*Vm)/(%pi);//voltage across load in V
Idc=(Vdc)/(rs+Rl);//DC current flowing through to load in A
Pdc=(Idc)^2*(Rl);//DC power delivered to the load in W
PIV=2*Vm;//PIV across each diode in V
Vr=sqrt((Vrms)^2-(Vdc)^2);//Ripple voltage in V
fr=2*f;//frequency of ripple voltage in Hz
mprintf("Thus voltage across load,DC current flowing through to load,DC power delivered to the load,PIV across each diode,Ripple voltage are %2.1f V,%g A,%1.3f W,%d V,%2.2f V and %d Hz respectively",Vdc,Idc,Pdc,PIV,Vr,fr);
//=================================END OF PROGRAM======================================================================================================
