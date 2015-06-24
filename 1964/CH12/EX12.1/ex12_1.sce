//Chapter-12, Example 12.1, Page 341
//=============================================================================
clc
clear
//INPUT DATA
Vm=325;//voltage in volts
Rl=1000;//resistive load in ohms
rf=100;//forward resistance in ohms
//CALCULATIONS
//for subdivision (a)
Im=Vm/(rf+Rl);//peak value of current in A
Idc=Im/(%pi);//average current in A
Irms=Im/2;//rms value of current in A
mprintf("Thus peak value of current,average current and rms value of current are %g A ,%g A and %g A respectively\n",Im,Idc,Irms);
//for subdivision (b)
Pdc=(Idc)^2*(Rl);//DC power output
mprintf("Thus DC power is %1.3f W\n",Pdc);
//for subdivision (c)
Pac=(Irms)^2*(rf+Rl);//AC input power
mprintf("Thus AC power is %d W\n",Pac);
//for subdivision (d)
n=(Pdc/Pac);//efficiency of rectification
n=n*100;//efficiency in percentage
mprintf("Thus efficiency in percentage is %2.2f percentage",n);
//=================================END OF PROGRAM======================================================================================================
