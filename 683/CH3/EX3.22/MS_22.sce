// sum 3-22
clc;
clear;
T=8*10^3;
d=80;
D=110;
l=2000;
Gst=80*10^3;
Gcop=Gst/2;
Js=%pi*d^4/32;
Jc=%pi*(D^4-d^4)/32;
//Ts=0.777*Tc
Tc=T/1.777*10^3;
Ts=0.777*Tc;
Ts1=Ts/Js*d/2;
Tc1=Tc/Jc*D/2;
//Let tl be Angular twist per unit length
tl=Ts*10^3/(Js*Gst)*180/%pi;
// Let the maximum stress developed when the Torque is acting in the centre of the shaft be Ts2 & Tc2 resp. for steel and copper
Ts2=Ts1/2;
Tc2=Tc1/2;

  // printing data in scilab o/p window
  printf("Ts1 is %0.3f N/mm^2    ",Ts1);
  printf("\n Tc1 is %0.1f N/mm^2    ",Tc1);
  printf("\n theta/length is %0.3f deg/m    ",tl);
  printf("\n Ts2 is %0.3f N/mm^2    ",Ts2);
  printf("\n Tc2 is %0.2f N/mm^2    ",Tc2);