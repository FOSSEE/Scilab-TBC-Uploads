// Chapter 9 Example 7//
clc
clear
// distance between conductors=d,diameter of conductors=d1,radius of conductor=r,height of the conductors from ground=h //
d=4;// in m//
d1=0.02;// in m//
r=d1/2;
h=8;
// capacitance between conductors=cab//
cab=(%pi*10^-9/(36*%pi))/(log(d/r)*(1/sqrt(1+(d/(2*h))^2)))*10^12;// to convert to pico farad multiply by 10^12 //
printf("\n The capacitance between conductors = %.2f pF/m\n",cab);
// capacitance between phase and neutral plane=can=cbn//
can=2*cab;
printf("\n The capacitance phase and neutral plane = %.2f pF/m\n",can);
// capacitance betweem the conductors when effect of earth is ignored =cab1//
cab1= %pi*((10^-9)/(36*%pi))*10^12/(log(d/r));
printf("\n The capacitance between conductors when effect of ground ignored = %.2f pF/m\n",cab1);
// charging current =ic ,frequency of operation of conductors=f,voltage which charging is done=v//
f=50;// in Hz//
v=33*10^3;// in V//
w=2*%pi*f;
ic=w*cab*10^-12*10*10^3*v;// multiplying factors to get the answer in A//
printf("\n Charging Current = %.3f A\n",ic);
