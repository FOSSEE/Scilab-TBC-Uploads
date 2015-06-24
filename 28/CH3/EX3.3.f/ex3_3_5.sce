// for open loop system
// given speed=60km/hr
syms R K1 K;
(R*K1*K)=60
K1=50;
K=1.5;
R=60/(K1*K)
disp(R,"Input open=")
// for closed loop
R=60(1+(K1*K))/(K1*K)
disp(R,"Input closed=")