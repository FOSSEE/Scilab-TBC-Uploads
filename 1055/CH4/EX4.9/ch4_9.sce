//To determine the sending end voltage and efficiency using Nominal_pi and Nominal-T method
clear
clc;
Ir=218.7*(.8-%i*.6);
Ic1=%i*314*.6*(10^-6)*76200;
Il=Ic1+Ir;
Vs=76200 + Il*(24+ %i*48.38);
phase_Vs=atand(imag(Vs)/real(Vs));//phase angle of VS
Pl=3*24*abs(Il)*abs(Il)/1000000;//The Loss(MW)
n=40*100/(40+Pl);
mprintf("Using Nominal- pi method\n ");
mprintf("Vs=%.0f volts at an angle of %.2f \n",abs(Vs),phase_Vs)
mprintf("efficiency=%.2f percent\n",n);
mprintf("\nUsing Nominal-T method\n");
Vc=76200*(.8+%i*.6) + 218.7*(12+ %i*24.49);
Ic=%i*314*1.2*(10^-6)*(63584+ %i*51076);
Is=199.46+ %i*23.95;
Vs=(Vc + Is*(12+ %i*24.49))/1000;
phase_Vs=atand(imag(Vs)/real(Vs));//Phase angle of Vs
Pl1=3*12*((200.89^2)+ 218.7^2)/1000000;//The loss(MW)
n1=40*100/(40+Pl1);
mprintf("Vs=%.2f  at an angle of %.2f \n",abs(Vs),phase_Vs)
mprintf("efficiency=%.2f percent\n",n1);

