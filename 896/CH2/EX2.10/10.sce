clc
//calc thickness of a storage tank
p_working=250;//lbf/in^2
//diameter of the cylinder = 10ft = 120in
d=120;//in
sigma_tensile=20000;//lbf/in^2
t=p_working*d/sigma_tensile/2;//in
disp("Thichness of the storage tank is")
disp(t)
disp("in")