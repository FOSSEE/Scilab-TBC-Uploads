//Example 3.4
//Frequency response

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//(a) Frequency response of 1/(s+k)
k=1;
fmin=1e-2;
fmax=1e2;
// Transfer function
s=poly(0,'s');
sysH=syslin('c',1/(s+k))

//Frequency response for k=1 
//Note that - magnitude plot semilog plot unlike log-log plot in the book.
bode(sysH,fmin,fmax)
title('Frequency response for k=1','fontsize',3)

//------------------------------------------------------------------
//(b) Response to u=sin(10*t);
t=0:0.02:10;
u=sin(10*t);
y=csim(u,t,sysH);
figure, plot(t,y)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Complete transient response','fontsize',3)
xlabel('Time (sec.)','fontsize',2)
ylabel('Output','fontsize',2)

//phase lag
figure, plot(t,y)
plot(t,u,'r')
zoom_rect([9 -1 10 1])
exec .\fig_settings.sci; // custom script for setting figure properties
title('Phase lag between output and input','fontsize',3)
xlabel('Time (sec.)','fontsize',2)
ylabel('Output, Input','fontsize',2)
h=legend('y(t)','u(t)')
h.legend_location = "in_upper_right"
h.fill_mode='off'

// time lag
w=find(t>=9.4 & t<=10);
T=t(w);
Y=y(w);
U=u(w);
wu=find(U==max(U))
wy=find(Y==max(Y))

//Responses
plot2d3(T(wy),Y(wy))
plot2d3(T(wu),U(wu))
delta_t=T(wu)-T(wy); //time lag sec.
xstring(9.64,-0.1,"$\delta t$",0,0)
xarrows([9.58;9.72], [0;0], 0.7, 1)
xarrows([9.72;9.58], [0;0], 0.7, 1)
t=get("hdl") 
disp(abs(delta_t), "Time lag of output in sec. is")
disp(abs(delta_t)*10, "Phase lag of output in radians is")

//------------------------------------------------------------------
