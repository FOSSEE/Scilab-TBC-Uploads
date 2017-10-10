clc;
clear all;
disp("critical radius of insulation")
kins=0.3;// W/(m*C)
kcork=0.038;// W/(m*C)

ro=30/2;//mm
ho=12;// W/(m^2*K)
rc=1000*kins/ho;//mm
disp("mm",rc,"critical radius of insulation =") 
kins=ro*ho;
disp("W/(m*C)",kins,"for insulation to be effective kins <=")

L=1;//m

//(log(rci/ro))/0.038+1/(12*rci)=25.25
rci=36;//mm
disp("By trial and error rci = 36 mm")
disp("mm",rci-ro,"Thickness of cork insulation =")
