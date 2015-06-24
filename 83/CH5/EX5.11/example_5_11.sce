//Chapter 5
//Example 5.11
//page 172
//To determine sending-end voltage.maximum power delivered
clear;clc;

A=0.93*(cosd(1.5)+%i*sind(1.5));
B=115*(cosd(77)+%i*sind(77));
Vr=275;
Ce=abs(A/B)*Vr^2;
printf('Centre of the receiving end circle is = %0.1f MVA\n\n',Ce);
CrP=850;Vs=CrP*abs(B)/Vr;
printf('(a) From the diagram,\n\tCrP=%d \n \tSending end voltage|Vs|= %0.1f kV\n\n',CrP,Vs);
Vs=295; //given
r=(Vs*Vr)/abs(B);
Pr_m=556; //from the diagram
printf('(b) Radius of the circle diagram = %0.1f MVA\n\t PR_max=%d MW\n\n',r,Pr_m);
Ps=295; //from the diagram;
printf('(c) Additional MVA to be drawn from the line is = P''S=%d MVAR\n\n',Ps);