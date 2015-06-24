//Chapter 12
//Example 12.12
//page 500
//To plot swing curves for single pole and three pole switching
clear;clc;

Xg0=0.1;Xg1=0.3;Xg2=0.15;E=1.2;H=4.167;
Xt=0.1;
Xl0=1.0;Xl1=0.3;Xl2=0.3;V=1;

//transfer reactance during LG fault(fault not cleared) by star delta transformation is given by
X12_fault=1.45;

//transfer reactance after LG faulted line open is given by
X12_fault_open=1.22;

//transfer reactance when all the lines are healthy is given by
X12_healthy=0.8;

//power angle equations
delta=0:0.1:180;

//Prefault condition
Pe1=(E*V)*sind(delta)/X12_healthy;
//for an initial load of 1PU
delta0=asind(1/1.5);

//during fault
Pe2=(E*V)*sind(delta)/X12_fault;

//during single pole switching
Pe3=(E*V)*sind(delta)/X12_fault_open;

//during three pole switching
Pe4=0;

//after reclosure
Pe5=Pe1;

Pm=1.0;

//xdot function defining the swing equations of machine during single poling
function xdot=mac_1_pole(t,x,tc,tr)
    xdot(1)=x(2);
    if (t<=tc) then
      xdot(2)=180*50*(Pm-(0.827*sind(x(1))))/12;  //swing equation before clearing the faulted line
    elseif (t>tc)&(t<tr) then
      xdot(2)=180*50*(Pm-(0.985*sind(x(1))))/12;//swing equation during single pole switching
    elseif (t>=tr) then
      xdot(2)=180*50*(Pm-(1.5*sind(x(1))))/12; //after reclosure
    end
endfunction

//xdot function defining the swing equations of machine during three poling
function xdot=mac_3_pole(t,x,tc,tr)
    xdot(1)=x(2);
    if (t>tc)&(t<tr) then
      xdot(2)=180*50*(Pm-0)/4.167;//swing equation during three pole switching
    elseif (t<=tc) then
      xdot(2)=180*50*(Pm-(0.827*sind(x(1))))/4.167;  //swing equation before clearing the faulted line
    elseif (t>=tr) then
      xdot(2)=180*50*(Pm-(1.5*sind(x(1))))/4.167; //after reclosure
    end
endfunction

//to find the solution of swing equation to draw the swing curves

//to draw the swing curves for three pole switching with reclosure
subplot(2,1,1)
x_1_0=[41.8,0]';t0=0; T=0:0.001:0.65;T=T';
tc=0.075;tr=0.325;
sol1=ode(x_1_0,t0,T,mac_3_pole);
plot(T,sol1(1,:)');
set(gca(),"grid",[1 1]);
title('Swing Curve for three pole switching at '+string(tc)+' s'+' and reclosure at '+string(tr)+' s','fontsize',3);
xset("font size",3) 
xstring(0.2,300,'MACHINE UNSTABLE');
xlabel('Time (in seconds)----->');
ylabel('Torque Angle (delta,deg)----->');

//to draw the swing curves for single pole switching with reclosure
subplot(2,1,2)
x_1_0=[41.8,0]';t0=0; T=0:0.001:2.2;T=T';
tc=0.075;tr=0.325;
sol2=ode(x_1_0,t0,T,mac_1_pole);
plot(T,sol2(1,:)');
set(gca(),"grid",[1 1]);
title('Swing Curve for single pole switching at '+string(tc)+' s'+' and reclosure at '+string(tr)+' s','fontsize',3);
xset("font size",3) 
xstring(1.2,50,'MACHINE STABLE');
xlabel('Time (in seconds)----->');
ylabel('Torque Angle (delta,deg)----->');

f=get("current_figure");
f.figure_position=[0,15];
f.figure_size=[560,1000];

