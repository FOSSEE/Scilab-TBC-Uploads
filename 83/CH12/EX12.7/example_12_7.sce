//Chapter 12
//Example 12.7
//page 475
//To calculate critcal clearing angle
clear;clc;

Xd=0.25; //direct axis transient reactance of the generator 
Xl1=0.5; Xl2=0.4; //reactances of transmission line
E=1.2; //voltage behind transient reactance
Xinf=0.05; //reactnce before infinite bus
V=1; //infinite bus voltage
Pm=1; //mechanical input to the generator
delta=0:1:180;

//Normal operation (prefault)
X1=Xd+(Xl1*Xl2/(Xl1+Xl2))+Xinf; //equivalent reactance between sending ened and receiving end
//Power angle equation before the fault is
Pe1=(E*V/X1)*sind(delta);
//prefault operating power =1.0pu
delta0=asin(1/max(Pe1));
printf('Normal Operation (prefault):\n');
printf('X1=%0.3f PU\n',X1);
printf('Pe1=%0.1fsin(delta)\n\n',max(Pe1));

//during fault there will be no power transfer
Pe2=0;
printf('During Fault:\n');
printf('Pe2=%d\n\n',Pe2);

//Post fault operation(fault cleared by opening the faulted line)
X3=Xd+Xl1+Xinf;
Pe3=(E*V/X3)*sind(delta);
delta_max=%pi-asin(Pm/max(Pe3));
//from A1 and A2, we solve A1=A2
deff('[y]=fx(delta_cr)',"y=1.5*cos(delta_cr)+delta_cr-1.293-Pm*(delta_cr-delta0)");
delta_cr=fsolve(0.45,fx);
printf('Post fault operation(fault cleared by opening the faulted line):\n');
printf('X3=%0.1fPU\n',X3);
printf('Pe3=%0.1fsin(delta)\n',max(Pe3));
printf('Delta_cr=%0.4f rad =%0.2f deg',delta_cr,delta_cr*180/%pi);
plot(delta,Pe1,delta,Pe3,delta,Pm*ones(1,length(delta)));
legend('Pe1=2.3sin(delta)','Pe3=1.5sin(delta)','Pm=1');
title('Power angle Diagram for example 12.7');
xlabel('delta (in degrees)-----&gt;');
ylabel('Electrical output (Pe)-----&gt;');