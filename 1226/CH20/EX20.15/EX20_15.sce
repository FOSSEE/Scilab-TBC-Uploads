clc;funcprot(0);//EXAMPLE 20.15
// Initialisation of Variables
D=0.33;.........//Cylinder diameter in m
L=0.35;.........//Cylinder stroke in m
k=0.05;.........//Clearance ratio 
N=300;..........//Compressor rpm
psuc=0.95;........//Suction pressure in bar
tsuc=298;.........//Suction temperature in K
pamb=1.013;......//Ambient pressure in bar
tamb=293;.........//Ambient temperature in K
p2=4.5;...........//Delivery pressure in bar
n=1.25;..........//Compression index
cv=0.717;...........//Specific heat at constant volume in kJ/kgK
ga=1.4;..........//Ratio of specific heats
etamech=0.8;......//Mechanical efficiency
R=0.287;.........//Gas constant in kJ/kgK
//Calculations
Vs=(%pi/4)*D*D*L*N*2;............//Swept volume in m^3
p1=psuc;etav=1-(k*(((p2/p1)^(1/n))-1));........//Volumetric efficiency
Vad=Vs*etav;................//Actual air drawn per min in m^3
FAD=(psuc/pamb)*(tamb/tsuc)*Vad;............//Free air delivered in m^3/min
disp(FAD,"Free air delivered in m^3/min:")
t1=tsuc;ma=(p1*10^5*Vad)/(R*1000*t1);.......//Mass of air delivered per min in kg
t2=t1*((p2/p1)^((n-1)/n));..........//Delivery temperature in K
Qr=ma*cv*((ga-n)/(n-1))*(t2-t1);..........//Heat rejected during compression in kJ/min
disp(Qr,"Heat rejected during compression in kJ/min:")
P=((n)/(n-1))*R*t1*(ma/60)*(((p2/p1)^((n-1)/(n)))-1)*(1/etamech);..........//Power needed to drive the compressor in kW
disp(P,"Power needed to drive the compressor in kW:")
