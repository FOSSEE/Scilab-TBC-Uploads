clc
//calc thickness of an oil storage
sigma_tensile=20000;//lbf/in^2 (tensile stress is normally 1/4 rupture stress)
//max pressure is observed at the bottom of the storage
p_max=22.9;//lbf/in^2
//diameter of storaeg tank = 120ft =1440in
d=1440;//in
t=(p_max)*d/sigma_tensile/2;//in
disp("Thichness of the storage tank is")
disp(t)
disp("in")