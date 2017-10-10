//Chapter 9 Example 8//
clc
clear
// from the diagram dab,dbc,dac are distances from each conductor to other in the transmission linr//
dab=5;
dbc=4;
dac=6;
// diameter of conductor=d,radius of each conductor=r,capacitance of phase a to neutral plane=can,equivalent distance=deq//
d=0.025;// in m//
deq=(dab*dbc*dac)^(1/3);
printf("\n Equivalent distance deq = %.2f m\n",deq);
r=d/2;
cab=(2*%pi*(10^-9/(36*%pi))*10^12)/(log(deq/r));// 10^12 is conversion factor//
printf("\n The capacitance of phase a to neutral plane = %.2f pF/m\n",cab);
