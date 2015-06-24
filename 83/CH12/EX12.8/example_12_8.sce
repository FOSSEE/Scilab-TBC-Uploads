//Chapter 12
//Example 12.8
//page 477
//To calculate critcal clearing angle
clear;clc;

Xd=0.25; //direct axis transient reactance of the generator 
Xl1=0.28; Xl2_1=0.14;Xl2_2=0.14; //reactances of transmission line
E=1.2; //voltage behind transient reactance
Xinf=0.17; //reactnce before infinite bus
V=1; //infinite bus voltage
Pm=1; //mechanical input to the generator
Xtr=0.15; //transformer reactance
delta=0:1:180;

//prefault operation
X1=Xd+Xinf+(Xtr+Xl1+Xtr)/2; //transfer reactance between generator and infinte bus
Pe1=E*V*sind(delta)/X1;
delta0=asin(1/max(Pe1));
printf('Normal Operation (prefault):\n');
printf('X1=%0.3f PU\n',X1);
printf('Pe1=%0.2fsin(delta)\n',max(Pe1));
printf('delta0=%0.3fPU\n\n',delta0);
//during fault there will be no power transfer
//using star delta transformation given in the textbook
X2=2.424;
Pe2=E*V*sind(delta)/X2;
printf('During Fault:\n');
printf('X2=%0.3f PU\n',X2);
printf('Pe2=%0.3fsin(delta)\n\n',max(Pe2));

//Post fault operation(faulty line switched off)
X3=Xd+Xinf+(Xtr+Xl1+Xtr);
Pe3=E*V*sind(delta)/X3;
delta_max=%pi-asin(Pm/max(Pe3));
//from A1 and A2, we solve A1=A2
deff('[y]=fx(delta_cr)',"y=-delta0+max(Pe2)*cos(delta_cr)-0.399-0.661-max(Pe3)*cos(delta_cr)+delta_max");
delta_cr=fsolve(0.45,fx);
printf('Post fault operation(faulty line switched off):\n');
printf('X3=%0.1fPU\n',X3);
printf('Pe3=%0.1fsin(delta)\n',max(Pe3));
printf('Delta_cr=%0.4f rad =%0.2f deg',delta_cr,delta_cr*180/%pi);
plot(delta,Pe1,delta,Pe2,delta,Pe3,delta,Pm);
legend('Pe1=1.69sin(delta)','Pe2=0.495sin(delta)','Pe3=1.2sin(delta)','Pm=1');
title('Power angle Diagram for example 12.8');
xlabel('delta (in degrees)----->');
ylabel('Electrical output (Pe)----->');
f=get("current_figure") 
f.figure_position=[0,15]
f.figure_size=[750,750]
