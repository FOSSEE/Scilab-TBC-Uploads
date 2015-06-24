clc
p1=7*10^5; //N/m^2
T1=873; //K
p2=1.05*10^5; //N/M62
n=1.25;
m=1; //kg
R=0.287;
cp=1.005;
T2=T1*(p2/p1)^((n-1)/n);

// At constant temperature from 1 to A
ds_1A=R*log(p1/p2);

// At constant pressure from A to 2
ds_2A=cp*log(T1/T2);


ds_12=ds_1A - ds_2A;
disp("Increase in entropy = ")
disp(ds_12)
disp("kJ/kg.K")