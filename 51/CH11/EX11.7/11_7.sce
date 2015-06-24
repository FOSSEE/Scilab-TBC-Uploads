clc;
clear;
pratio=0.82;//ratio of static to stagnation pressure
T=68;//degree F
//for (a)
//for the value of pratio given Ma is calculated as
Ma1=0.54;
k1=1.4;
Tratio1=0.94;//T/T0
T1=Tratio1*(T+460);// degree R
V1=(Ma1*(53.3*T1*k1)^0.5)*(32.2^0.5);//ft/sec
//for (b)
k2=1.66;
Ma2=((((1/pratio)^((k2-1)/k2))-1)/((k2-1)/2))^0.5;
Tratio2=1/(1+(((k2-1)/2)*(Ma2^2)));//T/T0
T2=Tratio2*(T+460);//degree R
V2=(Ma2*(386*T2*k2)^0.5)*(32.2^0.5);//ft/sec
disp("ft/sec",V1,"The flow velocity if fluid is air=")
disp("ft/sec",V2,"The flow velocity if fluid is helium=")