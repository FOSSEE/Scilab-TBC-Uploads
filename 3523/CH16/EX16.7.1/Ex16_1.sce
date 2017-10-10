clear all
clc
close

iload=5*1e-3;//Load current in A

//Capacitances of Cockcroft-Waltobn type voltage doubler in F
C1=0.01*1e-6;
C2=0.05*1e-6;

f=50;//frequency in Hz
Vs=100*1e3//Supply voltage in V

//Ripple voltage in volt
dv=iload/(C2*f)
printf('Ripple voltage in V %f',dv)

//Voltage drop in Volt
Vdrop=iload/f*(1/C1+1/(2*C2))
printf('Voltage drop in V %f',Vdrop)

//Average output voltage
V_av=2*sqrt(2)*Vs-Vdrop//in V
printf('Avarage voltage in V %f',V_av)

//Ripple factor
RF=Vdrop/(2*sqrt(2)*Vs)*100//in percentage
printf('Ripple voltage in percentage %f',RF)
