//Example 9.8
//Antiwindup compensation for a PI controller.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System Model

//Response of the system
kp=2;
ki=4;

//Without antiwindup
ka=0;
importXcosDiagram(".\Ex9_8_model.xcos")
xcos_simulate(scs_m,4);
scs_m.props.context
figure(0)
plot(yt.time,yt.values,'m-.')
figure(1)
plot(ut.time,ut.values,'m-.')

//With antiwindup
ka=10;
xcos_simulate(scs_m,4);
scf(0)
plot(yt.time,yt.values)
exec .\fig_settings.sci; // custom script for setting figure properties
xlabel('Time (sec.)');
ylabel('Output');
title("Integrator antiwindup (a) step response.",'fontsize',3);


scf(1)
plot(ut.time,ut.values);
exec .\fig_settings.sci; // custom script for setting figure properties
xlabel('Time (sec.)');
ylabel('Control');
title("Integrator antiwindup (b) Control effort.",'fontsize',3);
zoom_rect([0 -1.2 10 1.2])

//------------------------------------------------------------------

