//Chapter-12, Example 12.5, Page 344
//=============================================================================
clc
clear
//INPUT DATA
Imax=400*10^-3;//maximum value of current in mA
Iav=150*10^-3;//average value of current in mA
Vs=100;//maximum value of secondary voltage in V
//CALCULATIONS
//we know that maximum value of current does not exceed 80 percentage
Imax1=0.8*Imax;//maximum value of current in mA
Vm=sqrt(2)*(Vs);//maximum value of secondary voltage in V
Rl=(Vm)/(Imax1);//value of load resistor in ohms
Vdc=(2*Vm)/(%pi);//DC(load) voltage
Idc=Vdc/(Rl);//DC load current in A
PIV=2*Vm;//PIV of each diode
mprintf("Thus value of load resistor,voltage,current and PIV of each diode are %1.0f ohms,%d V,%1.3f A and %3.1f V respectively",Rl,Vdc,Idc,PIV);
//=================================END OF PROGRAM======================================================================================================
