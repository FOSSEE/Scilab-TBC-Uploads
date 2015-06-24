clc;clear;
//Example 14.8

//given values
V1=50;
T1=14;
V2=20;
T2=32;
RH2=60;

//from psychrometric chart
h1=39.4;
w1=0.010;
v1=0.826;
h2=79;
w2=0.0182;
v2=0.889;

//calculations
ma1=V1/v1;
ma2=V2/v2;
ma3=ma1+ma2;
//from Eq 14-24
w3=(w2*ma2+w1*ma1)/(ma1+ma2);
h3=(h2*ma2+h1*ma1)/(ma1+ma2);
disp(w3,'the specific humidity in kg of water/kg of dry air');
//from psychrometric chart
T3=19;
RH3=0.89;
v3=0.844;
V3=ma3*v3;
disp(RH3,'the relative humidity');
disp(T3,'the dry-bulb temperature in C');
disp(V3,'the volume flow rate of the mixture in m^3/min ')
