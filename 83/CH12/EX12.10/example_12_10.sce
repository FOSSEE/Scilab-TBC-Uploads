//Chapter 12
//Example 12.10
//page 482
//To plot swing curves for sustained fault and fault cleared at 2.5 and 6.25 cycles
clear;clc;
P_delivered=18;
MVA_base=20;
Xd=0.35;E=1.1;
Xl=0.2;
V=1;

H=2.52;
f=50;
M=H/(180*f);

/////////Prefault//////////////////////////
X1=Xd+Xl/2;
delta=0:0.1:180;
Pe1=E*V*sind(delta)/X1;
P_initial=P_delivered/MVA_base;Pm=P_initial;
delta0=asind(P_initial/max(Pe1));


//////during fault////////
X2=1.25;  //from delta to star conversion
Pe2=E*V*sind(delta)/X2;

//////postfault:with faulted line switched off/////////
X3=Xd+Xl;
Pe3=E*V*sind(delta)/X3;

Pa_0minus=0;
Pa_0plus=Pm-max(Pe2)*sind(delta0);
Pa_avg=(Pa_0minus+Pa_0plus)/2;


/////for a sustained fault///////////
P_max=max(Pe2);
delta_delta=0; //initially
delta=21.64; //initially
delta_old=21.64;
delta_t=0.05;
z1=21.64
n=10;
T=0;
printf('Point-by-point calculation of swing curve for sustained fault delta_t=0.05sec\n');
printf('_______________________________________________________________________________________________\n');
printf('t\t\tPmax\t\t sin(delta)\t\tPa\t\t y\t\tdelta\n');
printf('_______________________________________________________________________________________________\n');
printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',0.000,P_max,sind(delta),(0.9-P_max*sind(delta))/2,8.929*(0.9-P_max*sind(delta))/2,delta);
for i=1:n
    t=i*delta_t;
    if i==1 then
        Pa=(0.9-P_max*sind(delta_old))/2;
    else
        Pa=0.9-P_max*sind(delta_old);
    end
    
    y=(delta_t^2)*Pa/M;
    delta_delta=delta_delta+y;
    delta=delta+delta_delta;
    z1=[z1,delta];T=[T,t];
    printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',t,P_max,sind(delta),0.9-P_max*sind(delta),8.929*(0.9-P_max*sind(delta)),delta);
    delta_old=delta;
end


//////Fault cleared in 2.5 cycles(time to clear fault=0.05sec)/////

P_max1=max(Pe2);
P_max2=max(Pe3);
delta_delta=0; //initially
delta=21.64; //initially
delta_old=21.64;
delta_t=0.05;
z2=21.64
n=10;
T=0;
printf('\n\nComputations of swing curves for fault cleared at 2.5 cycles(0.05sec)\n');
printf('______________________________________________________________________________________________\n');
printf('t\t\tPmax\t\t sin(delta)\t\tPa\t\t y\t\tdelta\n');
printf('______________________________________________________________________________________________\n');
printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',0.000,P_max,sind(delta),(0.9-P_max*sind(delta))/2,8.929*(0.9-P_max*sind(delta))/2,delta);
for i=1:n
    t=i*delta_t;
    if i==1 then
        Pa=(0.9-P_max*sind(delta_old))/2;
        P_max=P_max1;
    elseif i==2 then    
        Pa=((0.9-P_max2*sind(delta_old))+((0.9-P_max1*sind(delta_old))))/2;
        P_max=P_max2;
    else
        Pa=0.9-P_max2*sind(delta_old);
        P_max=P_max2;
    end
    
    y=(delta_t^2)*Pa/M;
    delta_delta=delta_delta+y;
    delta=delta+delta_delta;
    z2=[z2,delta];T=[T,t];

    if i==1 then
        delta_old=delta;
      printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',t,P_max,sind(delta),((0.9-P_max2*sind(delta_old))+((0.9-P_max1*sind(delta_old))))/2,8.929*((0.9-P_max2*sind(delta_old))+((0.9-P_max1*sind(delta_old))))/2,delta);
    else
        printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',t,P_max,sind(delta),0.9-P_max*sind(delta),8.929*(0.9-P_max*sind(delta)),delta);
        delta_old=delta;  
    end

end



//////Fault cleared in 6.25 cycles(time to clear fault=0.125sec)/////

P_max1=max(Pe2);
P_max2=max(Pe3);
P_max=P_max1;
delta_delta=0; //initially
delta=21.64; //initially
delta_old=21.64;
delta_t=0.05;
z3=21.64
n=10;
T=0;
printf('\n\nComputations of swing curves for fault cleared at 6.25 cycles(0.125sec)\n');
printf('______________________________________________________________________________________________\n');
printf('t\t\tPmax\t\t sin(delta)\t\tPa\t\t y\t\tdelta\n');
printf('______________________________________________________________________________________________\n');
printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',0.000,P_max,sind(delta),(0.9-P_max*sind(delta))/2,8.929*(0.9-P_max*sind(delta))/2,delta);
for i=1:n
    t=i*delta_t;
    if i==1 then
        Pa=(0.9-P_max1*sind(delta_old))/2;
        P_max=P_max1;
    elseif i==2 then
        Pa=(0.9-P_max1*sind(delta_old));
        P_max=P_max1;
    elseif i==3 then
        Pa=(0.9-P_max1*sind(delta_old));
        P_max=P_max2;
    else
        Pa=0.9-P_max2*sind(delta_old);
        P_max=P_max2;
    end
    
    y=(delta_t^2)*Pa/M;
    delta_delta=delta_delta+y;
    delta=delta+delta_delta;
    z3=[z3,delta];
    T=[T,t];
    printf('%0.3f sec\t%0.3f\t\t %0.3f\t\t\t%0.3f\t\t%0.3f\t\t%0.3f\n',t,P_max,sind(delta),0.9-P_max*sind(delta),8.929*(0.9-P_max*sind(delta)),delta);
    delta_old=delta;

end

plot(T,z1,T,z2,T,z3);
set(gca(),"grid",[1 1]);
legend('Sustained Fault','Fault cleared at 2.5 cycles','Fault cleared at 6.25 cycles',[,2]);

title('Swing Curves for Example 12.10 for a sustained fault and for clearing in 2.5 and 6.25 cycles','fontsize',2.4);
xlabel('Time (in seconds)----->');
ylabel('Torque Angle (delta,deg)----->');
f=get("current_figure") 
f.figure_position=[0,15]
f.figure_size=[645,1000]




