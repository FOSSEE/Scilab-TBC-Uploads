//Example 6.19
//PID compensation design for spacecraft attitude control.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
G1=(0.9/s^2);
G2=(2/(s+2));
G=G1*G2;
Gs=syslin('c',G);

// PID controller parameters
Td_inv=0.1;  //  Td_inv=1/Td=0.1
Kd=1/Td_inv; //Kd=Td=Td_inv (derivative gain)

Ti_inv=0.005;  //  Ti_inv=1/Ti=0.005
Ki=Ti_inv; //Ki=Ti_inv (integral gain)

Kp=0.05 //Kp (Proportional gain)

D=Kp*(Kd*s+1)*(Ki/s+1); //PID Compensator

Dsc=syslin('c',D);

Ds=syslin('c',D/Kp); //PID Compensator with Kp=1 
// Compensated system with Kp=1
GDs=Gs*Ds;
//PID compensated system Kp=0.05;
GDsc=Gs*Dsc;
//------------------------------------------------------------------
//The bode plots
bode([Gs;GDs;GDsc],0.01/2/%pi,100/2/%pi,...
['G(s)';'D(s)G(s) with (Kp=1)';'D(s)G(s) with (Kp=0.05)'],"rad");
exec .\fig_settings.sci; //custom script for setting figure properties
title('Compensation for PID design','fontsize',3)

//Phase margin of pid compensated system with Kp=0.05;
[pm wcp]=p_margin(GDsc);

//------------------------------------------------------------------
//closed loop system
//step response
Gc=GDsc/(GDsc+1);
figure;
t=0:0.05:40;
y=csim('step',t,Gc);
plot(t,y,2)

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Step response for PID compensation of spacecraft'...
,'fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('$theta$','fontsize',2)
//------------------------------------------------------------------
//step disturbance response
Gc=G1/((G1*G2*D)+1);
Gcs=syslin('c',Gc);
figure;
t=0:0.5:1000;
u=0.1*ones(1,length(t));
y=csim(u,t,Gcs)
plot(t,y,2)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Step disturbance response for PID compensation...
 of spacecraft','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('$theta$','fontsize',2)
//------------------------------------------------------------------
