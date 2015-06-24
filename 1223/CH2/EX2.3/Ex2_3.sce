clear;
clc;
//Example 2.3
V_O=12;//(V)peak output voltage
I_L=0.12;//(A)current delivered to the load
R=V_O/I_L;
printf('\neffective load resistance=%.2f Ohm\n',R)
V_Y=0.7;//(V)diode cut in voltage
v_S=V_O+2*V_Y;
printf('\npeak value of v_S=%.2f V\n',v_S)
v_Srms=v_S/sqrt(2);
printf('\nrms voltage=%.2f V\n',v_Srms)
//let x=N1/N2
Vin=120;//(V)input line voltage
x=Vin/v_Srms;
printf('\nturns ratio=%.2f \n',x)
VM=12;//(V)
Vr=5/100*VM;
printf('\nripple voltage=%.2f V\n',Vr)
f=60;//(Hz) input frequency
C=VM/(2*R*Vr*f);
printf('\nfilter capacitance=%f F\n',C)
i_Dmax=(VM/R)*(1+2*%pi*sqrt(VM/(2*Vr)));
printf('\npeak diode current=%.2f A\n',i_Dmax)
R=0.1;//Kohm
i_Davg=(1/(2*%pi))*sqrt(2*Vr/VM)*((VM/R)*(1+%pi*sqrt(VM/(2*Vr))));
printf('\naverage diode current=%f mA\n',i_Davg)
PIV=v_S-V_Y;
printf('\npeak inverse voltage=%.2f V\n',PIV)
