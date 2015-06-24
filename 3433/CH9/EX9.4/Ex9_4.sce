clear;
clc;
funcprot(0);

//function to calculate flow angles
function [alpha2,beta2,beta3] =fun(r,N,cx2,ctheta2)
    alpha2 = (180/%pi)*atan(ctheta2/cx2);
    beta2 = (180/%pi)*atan((U2)*(r)/cx2 - tan(alpha2*%pi/180));
    beta3 = (180/%pi)*atan((U2)*r/cx2) ;
endfunction
    
//given data
P = 8;//output power in MW
HE = 13.4;//available head at entry in m
N = 200;//in rev/min
L = 1.6;//length of inlet guide vanes
d1 = 3.1;//diameter of trailing edge in m
D2t = 2.9;//runner diameter in m
nu = 0.4;//hub-tip ratio
eff = 0.92;//hydraulic efficiency
rho = 1000;//density in kg/m^3
g = 9.81;//acceleration due to gravity in m/s^2 

//Calculations
Q = P*10^6 /(eff*rho*g*HE);
cr1 = Q/(2*%pi*0.5*d1*L);
cx2 = 4*Q/(%pi*D2t^2 *(1-nu^2));
U2 = N*(%pi/30)*D2t/2;
ctheta2 = eff*g*HE/U2;
ctheta1 = ctheta2*(D2t/d1);
alpha1 = (180/%pi)*atan(ctheta1/cr1);

//calculating flow angle for diffrent radii
[alpha21,beta21,beta31] = fun(1.0,U2,cx2,ctheta2);
[alpha22,beta22,beta32] = fun(0.7,U2,cx2,ctheta2/0.7);
[alpha23,beta23,beta33] = fun(0.4,U2,cx2,ctheta2/0.4);

//Results
printf('Calculated values of flow angles:\n Parameter                              Ratio of r/ri                 ');
printf('\n ------------------------------------------------------------');
printf('\n                        0.4            0.7               1.0');
printf('\n                       --------------------------------------');
printf('\n ctheta2(in m/s)       %.3f          %.3f             %.3f',ctheta2/0.4,ctheta2/0.7,ctheta2/1.0);
printf('\n tan(alpha2)           %.3f          %.4f            %.3f',tan(alpha23*%pi/180),tan(alpha22*%pi/180),tan(alpha21*%pi/180));
printf('\n alpha2(deg)           %.2f          %.2f             %.2f',alpha23,alpha22,alpha21);
printf('\n U/cx2                 %.3f          %.4f            %.3f',(U2/cx2)*0.4,(U2/cx2)*0.7,(U2/cx2)*1.0);
printf('\n beta2(deg)            %.2f          %.2f             %.2f',beta23,beta22,beta21);
printf('\n beta3(deg)            %.2f          %.2f             %.2f',beta33,beta32,beta31);
printf('\n ------------------------------------------------------------');
