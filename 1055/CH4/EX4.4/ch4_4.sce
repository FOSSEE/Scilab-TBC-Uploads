//To calculate the voltage across each load impedence and current in the nuetral
clear
clc;
IR=(400)/((sqrt(3)*(6.3+%i*9)));
IY=231*(cosd(-120) + %i*sind(-120))/8.3;
IB=231*(cosd(120) + %i*sind(120))/(6.3-%i*8);
In=abs((IR +IY +IB));//Neutral current
mprintf("Neutral current =%.2f amps\n",In);
VR=abs(IR*(6+ %i*9));
VY=abs(IY*(8));
VB=abs(IB*(6-%i*8));
mprintf("Voltage across Phase R =%.1f volts \n",VR);
mprintf("Voltage across Phase Y =%.2f volts \n",VY);
mprintf("Voltage across Phase B =%.0f volts \n",VB);
