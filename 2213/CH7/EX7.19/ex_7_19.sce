//Example 7.19. //maximum power and energy taken
clc;
clear;
close;
//given data :
format( 'v',7)
W=203;//in tonne
We=1.1*W;// in tonne
r=44;// N/tonne
G=(1/500)*100;// gradient
Vm=45;// maximum speed in kmph
t1=30;// in sec
alfa=Vm/t1;// in kmph
Ft=(277.8*We*alfa)+(98.1*W*G)+(W*r);// in N
Po=(Ft*Vm)/3600;
disp("part (a)")
disp(Po,"The maximum power output,(kW) = ")
e=60/100;// efficiency
Et=(1/2)*((Ft*Vm)/3600)*(t1/3600);
E=(Et/e);
disp(" part (b) ")
disp(E,"The energy taken(kWh) = ")
