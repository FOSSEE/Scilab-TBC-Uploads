
clear all
clc
close

iload=5*1e-3;//Load current in A

//Capacitances of Cockcroft-Waltobn type voltage tripler in F
C1=0.01*1e-6;
C2=0.05*1e-6;
C3=0.10*1e-6;

f=50;//frequency in Hz
Vs=100*1e3//Supply voltage in V

//Ripple voltage in V
dv=iload/f*(2/C1+1/C3)
printf('Ripple voltage in V %f',dv)

//Voltage drop in V
Vdrop=iload/f*(1/C2+1/C1+1/(2*C3))
printf('Voltage drop in V %f',Vdrop)

//Average output voltage in V
V_av=3*sqrt(2)*Vs-Vdrop
printf('Avarage voltage in V %f',V_av)

//Ripple factor in percentage
RF=Vdrop/(3*Vs*sqrt(2))*100
printf('Ripple voltage in percentage %f',RF)
