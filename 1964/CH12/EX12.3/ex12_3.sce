//Chapter-12, Example 12.3, Page 342
//=============================================================================
clc
clear
//INPUT DATA
Vac=230;//AC supply voltage
turnsratio=5;//turns ratio
Rl=300;//resistance in ohms
//CALCULATIONS
Vs=(Vac)/(turnsratio);//transformer sceondary voltage in V
Vm=sqrt(2)*(Vs);//maximum value of secondary voltage in V
Vdc=Vm/(%pi);//DC output voltage in V 
PIV=Vm;//PIV of a diode in V
Im=(Vm/Rl);//maximum value of load current in A
Pm=(Im)^2*(Rl);//Maximum value of power delivered
Idc=Vdc/(Rl);//average value of load current in A
Pdc=(Idc)^2*(Rl);//average value of power delivered to load
mprintf("Thus DC output voltage,PIV,Maximum value of power delivered,average value of power delivered to load are %2.1f V,%d V,%2.1f W,%1.2f W respectively",Vdc,PIV,Pm,Pdc);
//=================================END OF PROGRAM======================================================================================================
