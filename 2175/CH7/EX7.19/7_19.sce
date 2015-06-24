clc;
n=5;
t0=25.740
tn=27.880
v=-[(t0-25.730)/5];
v1=(tn-27.870)/5;
t=25.735;
t1=27.875;
Et=110.9880;

corc=-5*v1+[(v1-v)/(t1-t)]*[Et+26.81-5*t];
temp_rise=tn-t0;
c_temp_rise=temp_rise+corc;

q=c_temp_rise*2500*4.187*10^-3;
Q=q/(.825*10^-3);
disp("kJ/kg",Q,"calorific value of fuel is:");
