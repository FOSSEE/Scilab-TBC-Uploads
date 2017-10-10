//Example 6.14 
//Lead compensation for DC motor.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
g=1/s/(s+1);
K=10; //DC gain
KGs=syslin('c',K*g);

//Lead compensator
numD=s/2+1;
denD=s/10+1;
D=numD/denD;
Ds=syslin('c',D);

KGDs=Ds*KGs; //compensated system
//------------------------------------------------------------------
//(a) The bode plot of the system
bode([KGs;KGDs],0.1/2/%pi,100/2/%pi,['KG(s)';'D(s)G(s)'],"rad");
exec .\fig_settings.sci; //custom script for setting figure properties
title('Frequency response of lead compensation design','fontsize',3)

//root locus
figure(1)
evans(KGDs/K)
xset("font size", 3);
xstring(-10,4,"$KD(s)=\frac{s/2+1}{s/10+1}$",0,0)
xstring(-10,2,"$G(s)=\frac{1}{s(s+1)}$",0,0)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Root locus for lead compensation design','fontsize',3)
zoom_rect([-14 -8 4 8])
f=gca();
f.x_location = "origin";
f.y_location = "origin";
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
//(b) digital version of lead compensator
//Discretize the system using sampling time Ts=0.05 and Bilinear Transform
Ts=0.05;        //in book its 0.005, which may not give expected responses
D=tf2ss(KGDs/K/g);
sysD=cls2dls(D,Ts);

//Pulse transfer function
Ddz=ss2tf(sysD)
disp(Ddz,"Ddz=")

//------------------------------------------------------------------
//(c) Compare step and ramp responses.
//step response switch sw=1 and for ramp response sw=0
//------------------------------------------------------------------

//step response
sw=1; 
importXcosDiagram(".\Ex6_14_model.xcos")

xcos_simulate(scs_m,4);
scs_m.props.context
figure,
a1=newaxes(); 
a1.axes_bounds=[0,0,1.0,0.5];
plot(time_resp.time,time_resp.values)

xlabel('time');
ylabel('y');
title(["Lead-compensation design (a) step Response...
 (b) ramp response"],'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
legend("continuous controller","digital controller",4)
//------------------------------------------------------------------
//ramp response
sw=0; 
importXcosDiagram(".\Ex6_14_model.xcos")

xcos_simulate(scs_m,4);
scs_m.props.context

a2=newaxes(); 
a2.axes_bounds=[0,0.5,1.0,0.5];
plot(time_resp.time,time_resp.values)

xlabel('time');
ylabel('y');
title("(b)",'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
legend("continuous controller","digital controller",4)
//------------------------------------------------------------------
