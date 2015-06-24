//Example 7.20.maximum power and specific energy consumption
clc;
clear;
close;
format('v',7)
//given data :
W=16;//in tonne
We=1.1*W;// in tonne
Vs=45;//in kmph
r=40;// in N/tonne
S=2.8;// in km
Ts=(S*3600)/Vs;
Td=30;// in sec
T=Ts-Td;
alfa=2;//in kmphps
Beta=3.2;// in kmphps
K=(1/(2*alfa))+(1/(2*Beta));
Vm=round((T/(2*K))-sqrt((T/(2*K))^2-((3600*S)/K)));// maximum speed
t1=Vm/alfa;// acceleration time
t3=Vm/Beta;// duration of braking
t2=T-(t1+t3);// time f free run in sec
Ft=(277.8*We*alfa)+(W*r);
P_max=(Ft*Vm)/3600;
disp("part (a)")
disp(P_max,"Maximum power output,(kW) = ")
// answer is wrong in book
Va=50;//Average speed in kmph
Dr=(3600*S)/Va;
T=180;
G=1;
e=80/100;//efficiency
Dt=(1/2)*((Vm*t3)/3600);// distance travelled during braking period in km
S1=S-Dt;// distance travelled with power in km
So=(((0.01072*Vm^2)/S)*(We/W))+((0.2778*r*S1)/S);
Sec=So/e;
disp("part (b)")
disp(Sec,"Specific energy consumption,(Wh/tonne-km) = ")
// answer is wrong in book
