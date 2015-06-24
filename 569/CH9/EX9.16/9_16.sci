// calculate the open circuit voltage
clc;
P=200*10^3;
R=70*10^-3;
v=0.25;
t=1*10^-3;
r=60*10^-3;
E=200*10^9;
Sr=[3*P*R^2*v/(8*t^2)]*{(1/v+1)-(3/v+1)*(r/R)^2};
St=[3*P*R^2*v/(8*t^2)]*{(1/v+1)-(1/v+3)*(r/R)^2};
Sta2=(Sr-v*St)/E;
Sta3=(Sr-v*St)/E;
r0=10*10^-3;
Sr1=[3*P*R^2*v/(8*t^2)]*{(1/v+1)-(3/v+1)*(r0/R)^2};
St1=[3*P*R^2*v/(8*t^2)]*{(1/v+1)-(1/v+3)*(r0/R)^2};
Sta1=(Sr1-v*St1)/E;
Sta4=(Sr1-v*St1)/E;
Gf=1.8;
ei=12;
eo=(Sta1+Sta4-Sta2-Sta3)*Gf*ei/4;
disp(eo,'output voltage (V)')
